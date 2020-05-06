require 'rails_helper'

RSpec.feature "ProductDetails", type: :feature, js: true  do
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
  
  
  scenario "User can navigate from home page to product detail page by clicking on a product" do
    p = Product.all.sample
    
    visit root_path

    expect(page).to have_text(p.name)

    product_article_elt = page.find(:xpath, '//a/h4', text: p.name)
    # # puts product_article_elt
    # first(product_article_elt).click
    first('.product').click_link('Details')
  # page.find('//a/h4', p.name)
  # product_details = page.find_link,'Details'
  # product_details.click
# find('link_to product', text: 'Details').click()
    
    # save_screenshot 'clicked_before_expect.png'
    
    # expect(page).to have_selector 'section.products-show'
    
    expect(page).to have_css('.products-show')
    # # expect(page).to have_selector 'article.product' # this matches on the original page!
    # expect(page).to have_text p.name
   
    save_and_open_screenshot
    
  end


end

