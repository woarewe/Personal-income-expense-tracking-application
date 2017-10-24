class Capital < ApplicationRecord

  validates :note, presence: true
  validates :value, numericality: true, presence: true

  belongs_to :user
  belongs_to :category
end
