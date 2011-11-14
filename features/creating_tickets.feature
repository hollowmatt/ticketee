Feature: Creating Tickets
In order to create tickets for projects
As a user
I want to be able to select a project and add the ticket.

Background:
	Given there is a project called "Internet Explorer"
	And I am on the homepage
	When I follow "Internet Explorer"
	And I follow "New Ticket"
	
Scenario: Creating a ticket
	When I fill in "Title" with "Non-standards compliance"
	And I fill in "Description" with "My pages are ugly!"
	And I press "Create Ticket"
	Then I should see "Ticket has been created."
	
Scenario: Create a ticket with invalid attributes fails
	When I press "Create Ticket"
	Then I should see "Ticket has not been created."
	And I should see "Title can't be blank"
	And I should see "Description can't be blank"

Scenario: Ticket description should be more than 10 chars
	When I fill in "Title" with "Short Description"
	And I fill in "Description" with "nasty"
	And I press "Create Ticket"
	Then I should see "Ticket has not been created."
	And I should see "Description is too short"
	