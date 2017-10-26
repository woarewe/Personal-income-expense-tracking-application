require 'rails_helper'

RSpec.describe Category, type: :model do
  subject do
    described_class.new(title: 'Other', user_id: 1, type: 'IncomeCategory')
  end

  it 'it valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'it not valid without title' do
    subject.title = nil
    expect(subject).to_not be_valid
  end

  it 'it not valid without user_id' do
    subject.user_id = nil
    expect(subject).to_not be_valid
  end

  it 'it not valid with another category type' do
    subject.type = 'Another'
    expect(subject).to_not be_valid
  end
end
