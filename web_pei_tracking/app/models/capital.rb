class Capital < ApplicationRecord

  validates :note, presence: true

  belongs_to :user
  belongs_to :category
end
