class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  CATEGORY = ["Chinese", "Italian", "Japanese", "French", "Belgian"]

  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true, inclusion: { in: %w[Chinese Italian Japanese French Belgian] }
end
