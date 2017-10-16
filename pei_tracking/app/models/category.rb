class Category < ApplicationRecord
  has_many :capitals, dependent: :destroy
end
