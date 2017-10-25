class Category < ApplicationRecord
  belongs_to :user
  has_many :capitals, dependent: :destroy

  validates_uniqueness_of :title, scope: :user_id
end
