# require 'rails_helper'

# RSpec.describe Product, type: :model do
#   describe 'Validations' do

#     xit "product will be saved" do
#       category = Category.create(name: "Games")
#       product = Product.create(name: "Zelda", price: 50, quantity: 10, category: category)
#       expect(product).to be_valid
#     end

#     xit "product won't be saved if there is no Name" do
#       category = Category.create(name: "Games")
#       product = Product.create(name: nil, price: 50, quantity: 10, category: category)
#       expect(product.errors.full_messages).to include "Name can't be blank"

#   end
#     xit "product won't be saved if there is no Price" do
#       category = Category.create(name: "Games")
#       product = Product.create(name: "Zelda", price: nil, quantity: 10, category: category)
#       expect(product.errors.full_messages).to include "Price can't be blank"

#   end
#     xit "product won't be saved if there is no Quantity" do
#       category = Category.create(name: "Games")
#       product = Product.create(name: "Zelda", price: 50, quantity: nil, category: category)
#       expect(product.errors.full_messages).to include "Quantity can't be blank"

#   end
#     xit "product won't be saved if there is no Category" do
#       category = Category.create(name: "Games")
#       product = Product.create(name: "Zelda", price: 50, quantity: 10, category: nil)
#       expect(product.errors.full_messages).to include "Category can't be blank"

#   end



# end
# end