class Destination < ApplicationRecord
  belongs_to :user

  validates :user, presence: true
  validates :month, presence: true
  validates :long_distance, presence: true
  validates :middle_distance, presence: true
  validates :short_distance, presence: true
end
