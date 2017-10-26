class Category < ApplicationRecord
  belongs_to :user
  has_many :capitals, dependent: :destroy

  validates_uniqueness_of :title, scope: :user_id
  validates :title, presence: true, length: { maximum: 15 }
  validates :type, inclusion: { in: %w[IncomeCategory ExpenseCategory] }

  def short_type
    type.split('Category').first
  end
end
