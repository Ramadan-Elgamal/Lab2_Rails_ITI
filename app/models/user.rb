class User < ApplicationRecord
  validates :name, :DOB, :phone_number, :address, presence: true
  
  validates :email, 
            presence: true, 
            uniqueness: { case_sensitive: false }, 
            format: { 
              with: URI::MailTo::EMAIL_REGEXP, 
              message: "must be a valid email format" 
            }
end