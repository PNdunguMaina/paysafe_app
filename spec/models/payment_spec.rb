require 'rails_helper'

RSpec.describe Payment, type: :model do
  it 'is not valid without a name' do
    payment = Payment.new(name: nil)
    expect(payment).to_not be_valid
  end

  it 'has a value greater than 0 as the amount' do
    amount = Payment.new(amount: 15)
    expect(amount.amount).to be > 0
  end

  it 'has a numeric value as the amount' do
    amount = Payment.new(amount: 15)
    expect(amount.amount).to be_kind_of(Numeric)
  end
end
