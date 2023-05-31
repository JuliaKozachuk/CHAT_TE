class User < ApplicationRecord
  enum status: { draft:0, active:1, deleted:2 }
  validates :telephone, phone: { possible: true, allow_blank: false}, uniqueness: false
  before_save :format_phone
  validates :email, presence: true, uniqueness: true
  validates :username, presence: true, length: {minimum: 2}, uniqueness: true

  
  

  has_and_belongs_to_many :groups
  has_many :messages, foreign_key: :autor_id
  has_many :users, through: :messages

  def format_phone
    self.telephone=Phonelib.parse(telephone).e164
  end
end