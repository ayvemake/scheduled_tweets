#email:string
#password_digest:string
#password:string virtual
#password_confirmation:string virtual

class User < ApplicationRecord
    has_secure_password
    validates :email, presence: true, format: { with: /\A[^\s@]+@[^\s@]+\z/, message: "Must be a valid email address" }
    validates :password, presence: true, length: { minimum: 6 }
    validates :password_confirmation, presence: true
end
