Feature: Editing  Tickets
	In order to alter ticket information
	As a user
	I want a form to edit the tickets
	
	Background:
		Given there is a project called "TextMate 2"
		And that project has a ticket:
		| title	| description	|
		| make it shiny	| Gradients, starbursts, oh my! |
		Given I am on the homepage
		When I follow "TextMate 2"
		And I follow "make it shiny"
		When I follow "Edit Ticket"
	
	Scenario: Updating a ticket
		When I fill in "Title" with "Make it Really Shiny"
		And I press "Update Ticket"
		Then I should see "Ticket has been updated." 
		And I should see "Make it Really Shiny"
		But I should not see "make it shiny"
		
	Scenario: Updating a ticket with invalid info
		When I fill in "Title" with ""
		And I press "Update Ticket"
		Then I should see "Ticket has not been updated." 
		