class User < ApplicationRecord
    before_save { self.email = email.downcase }

    validates :username, presence: true, 
                uniqueness: {case_sensitive: false}, 
                length: { minimum: 3, maxmimum: 25 }
    validates :email, presence: true, 
                uniqueness: {case_sensitive: false}, 
                length: { minimum: 3, maxmimum: 105 }

    has_many :articles                
end