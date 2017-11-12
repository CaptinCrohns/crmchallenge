class Customer < ApplicationRecord
  validates :full_name, presence: true
  validates :full_name, uniqueness: true
  validates :phone_number, presence: true
  belongs_to :province
end
