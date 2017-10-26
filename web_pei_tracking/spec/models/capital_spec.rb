require 'rails_helper'

RSpec.describe Capital, type: :model do
  subject do
    described_class.new(note: 'Other',
                        value: 1000.05,
                        implemented_at: Date.new,
                        user_id: 1,
                        category_id: 2,
                        type: 'Expense')
  end

  it 'it valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'it not valid without a title' do
    subject.note = nil
    expect(subject).to_not be_valid
  end

  it 'it not valid without a value' do
    subject.value = nil
    expect(subject).to_not be_valid
  end

  it 'it not valid when value is not numeric' do
    subject.value = 'It string'
    expect(subject).to_not be_valid
  end

  it 'it not valid without implemented_at' do
    subject.implemented_at = nil
    expect(subject).to_not be_valid
  end

  it 'it not valid when category is not of user' do
    subject.category_id = 3
    expect(subject).to_not be_valid
  end

  it 'it not valied when types it not same' do
    subject.category_id = 1
    expect(subject).to_not be_valid
  end
end