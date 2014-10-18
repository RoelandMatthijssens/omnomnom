Feature: home page
	In order to find the placed orders
	As a viewer
	I want to go to the home page

	Scenario: View the home page
		Given there are orders placed
		And i go to the homepage
		Then i should see the placed orders
