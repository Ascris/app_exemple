# == Schema Information
#
# Table name: users
#
#  id                 :integer          not null, primary key
#  nom                :string(255)
#  email              :string(255)
#  created_at         :datetime
#  updated_at         :datetime
#  encrypted_password :string(255)
#  salt               :string(255)
#

require 'digest'

class User < ActiveRecord::Base
	attr_accessor :password
	attr_accessible :nom, :email, :password, :password_confirmation

	email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

	validates :nom,
				:presence => true,
				:length => { :maximum => 60 }

	validates :email, 
				:presence => true,
				:format => { :with => email_regex },
				:uniqueness => { :case_sensitive => false }

	validates :password,
				:presence => true,
				:confirmation => true,
				:length => { :within => 6..40 }

	before_save :encrypt_password
	
	#retourne true si le mot de passe correspond
	def has_password?(password_soumis)
		encrypted_password == encrypt(password_soumis)
	end


	def self.authenticate(email, password_soumis)
		user = find_by_email(email)
		return nil if user.nil?
		return user if user.has_password?(password_soumis)
	end

	private
		def encrypt_password
			self.salt = make_salt if new_record?
			self.encrypted_password = encrypt(password)
		end
		
		def encrypt(string)
			secure_hash("#{salt}--#{string}")
		end

		def make_salt
			secure_hash("#{Time.now.utc}--#{password}")
		end

		def secure_hash(string)
			Digest::SHA2.hexdigest(string)
		end
end
