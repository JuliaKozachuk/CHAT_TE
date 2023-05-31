class Message < ApplicationRecord
  validates :text, presence: true
  belongs_to :user, foreign_key: :autor_id
  belongs_to :group
end