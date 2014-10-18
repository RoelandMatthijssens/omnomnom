Given(/^there are orders placed$/) do
	step "create a user"
	step "create an item"
	step "create an order"
end

Given(/^create a user$/) do
	User.create!(email: "test@example.com", password: "password123", first_name: "alberto", last_name: "alfons")
end

Given(/^create an item\s*(.*)$/) do |name|
	if(!name.empty?)
		FactoryGirl.create(:item, name: name)
	else
		FactoryGirl.create(:item)
	end
	Item.create!(name: "test_item")
end

Given(/^create an order$/) do
	order = Order.create!(user: User.all.first)
	order.items << Item.all.first
end

Given(/^i am logged in$/) do
	step "create a user"
	visit "/users/sign_in"
	fill_in :user_email, with: User.all.first.email
	fill_in :user_password, with: "password123"
	click_button "Log in"
end

Given(/^i go to the homepage$/) do
	visit root_path
end

Then(/^i should see the placed orders$/) do
	page.should have_content "pannenkoek"
	page.should have_content "alberto"
	page.should have_content "alfons"
end
