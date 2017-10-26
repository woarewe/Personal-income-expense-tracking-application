class Capital < ApplicationRecord
  belongs_to :user
  belongs_to :category

  validates :note, presence: true
  validates :value, numericality: true, presence: true
  validates :implemented_at, presence: true
  validates :type, inclusion: { in: %w[Income Expense] }
  validate :user_category
  validate :same_types

  private

  def user_category
    errors.add(:base, "User don't have category") if user_id != category.user_id
  end

  def same_types
    errors.add(:base, 'Types is not same') if type != category.short_type
  end

end
