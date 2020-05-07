require 'rails_helper'

RSpec.feature "Visitor navigates to home page", type: :feature, js: true do

  # SETUP
  before :each do
    @category = Category.create! name: 'Apparel'

    10.times do |n|
      @category.products.create!(
        name:  Faker::Hipster.sentence(3),
        description: Faker::Hipster.paragraph(4),
        image: open_asset('apparel1.jpg'),
        quantity: 10,
        price: 64.99
      )
    end
  end


  scenario "Able to add an item to cart succesfully" do 

    p = Product.all.sample
    visit root_path

    expect(page).to have_text(p.name)

first(".product").click_button("Add")


expect(page).to have_text("My Cart")
expect(page).to have_content("Cart (1)")

    save_and_open_screenshot

  end

end