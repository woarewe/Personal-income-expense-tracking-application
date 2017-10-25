class Capital < ApplicationRecord
  belongs_to :user
  belongs_to :category

  validates :note, presence: true
  validates :value, numericality: true, presence: true
end
