Feature: place an order
	In order to order food
	As a logged in member
	I want to be able to place an order from the homepage

	Scenario: i should see my newly placed order
		Given i am logged in
		And i successfully place an order
		Then i should see my placed order
