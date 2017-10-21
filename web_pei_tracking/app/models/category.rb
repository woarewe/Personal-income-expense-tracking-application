class Category < ApplicationRecord
  belongs_to :user
  has_many :capitals

  validates :title, presence: true, uniqueness: true

end
