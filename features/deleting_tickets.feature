Feature: Deleting  Tickets
	In order to delete a ticket
	As a user
	I want a button to delete the tickets
	
	Background:
		Given there is a project called "TextMate 2"
		And that project has a ticket:
		| title	| description	|
		| make it shiny	| Gradients, starbursts, oh my! |
		Given I am on the homepage
		When I follow "TextMate 2"
		And I follow "make it shiny"
		
	Scenario:
		When I follow "Delete Ticket"
		Then I should see "Ticket has been deleted."
		And I should be on the project page for "TextMate 2"
