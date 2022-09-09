class Post < ApplicationRecord
  has_many :post_users, dependent: :destroy
  has_many :users, through: :post_users
  has_many :messages, dependent: :destroy

  validates :name, presence: true
end
