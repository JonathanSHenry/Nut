class User < ApplicationRecord
    
    before_save { self.email = email.downcase }

    validates :name,  presence: true, length: { maximum: 50 }
    
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i 
    validates :email, presence: true, length: { maximum: 255 }, format: { with: VALID_EMAIL_REGEX }, uniqueness: true, uniqueness: { case_sensitive: false }
    
    has_secure_password
    validates :password, presence: true, length: { minimum: 6 }

    #VALID_PASSWORD_REGEX = /\A[\w+\-.]/i
    #validates :password, presence: true, length: { maximum: 50 }, format: { with: VALID_PASSWORD_REGEX }
    #validates :password, presence: true, length: { maximum: 50 }, length:{minimum: 5}

    #validates :password_confirmation,  presence: true, format: {with: password}
end
