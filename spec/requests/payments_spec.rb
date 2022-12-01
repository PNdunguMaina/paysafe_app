require 'rails_helper'
RSpec.describe '/payments', type: :request do
  
  describe 'GET /index' do
    before :each do
      @category = Category.new(name:'McDonald', icon: 'https://repository-images.githubusercontent.com/254798995/2f087780-7be6-11ea-89c8-8e1f7efe2d65', author_id: 1)
      @payment = Payment.new(name: 'THJKLJ345FCGHHBN87uyh', amount: 50, author_id: 1, category_id: @category.id)
      
    end
    it 'renders a successful response' do
      get new_payment_path
      expect(response).to render_template(:new)
    end
  end

  
end
