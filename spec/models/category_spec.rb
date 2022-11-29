require 'rails_helper'

RSpec.describe Category, type: :model do
  subject { Category.new(name: 'Microverse', icon: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSr-Mm32aI9PM4KV4RIxm9FfjvCMluDCcrzq5m9qt1aFA&s') }

  it 'is not valid without a name' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'has a name of type string' do
    expect(subject.name).to be_kind_of(String)
  end
end
