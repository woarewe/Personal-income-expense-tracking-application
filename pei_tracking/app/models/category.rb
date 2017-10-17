class Category < ApplicationRecord
  has_many :capitals, dependent: :destroy
  belongs_to :user
end
