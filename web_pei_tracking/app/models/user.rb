class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :capitals, dependent: :destroy
  has_many :categories, dependent: :destroy
end
