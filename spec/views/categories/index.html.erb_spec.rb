require 'rails_helper'

RSpec.describe 'categories/index', type: :feature do
  before(:each) do
    @user = User.create(name: 'John Doe', email: 'johndoe@example.com',
                        encrypted_password: 'pattohoh')
    @category = Category.create(name: 'McDonald',
                                # rubocop:disable Layout/LineLength
                                icon: 'https://repository-images.githubusercontent.com/254798995/2f087780-7be6-11ea-89c8-8e1f7efe2d65', author_id: @user.id)
    # rubocop:enable Layout/LineLength
  end

  it 'renders correctly in categories page' do
    visit categories_path
    expect(page).to have_content('TRANSACTIONS')
    expect(page).to have_content('Most Recent')
    expect(page).to have_content('Most Ancient')
    expect(page).to have_content('New category')
  end
end
