class User < ApplicationRecord
    validates :username, presence: true, 
                uniqueness: {case_sensitive: false}, 
                length: { minimum: 3, maxmimum: 25 }
    validates :email, presence: true, 
                uniqueness: {case_sensitive: false}, 
                length: { minimum: 3, maxmimum: 105 }
end