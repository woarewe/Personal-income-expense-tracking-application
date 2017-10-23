class Category < ApplicationRecord
  belongs_to :user
  has_many :capitals, dependent: :destroy

  validates :title, presence: true, uniqueness: true

end
