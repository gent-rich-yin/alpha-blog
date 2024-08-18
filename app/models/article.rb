class Article < ApplicationRecord
    validates :title, presence: true, length: { minimum: 6, maxmimum: 100 }

    belongs_to :user
end