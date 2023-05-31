class Group < ApplicationRecord
    validates :title, presence: true, length: {minimum: 2}
    has_and_belongs_to_many :users
    has_many :messages
    has_many :groups, through: :messages
end