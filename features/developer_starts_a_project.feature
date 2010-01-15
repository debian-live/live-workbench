Feature: developer starts a project

    As a developer
    I want to start a project
    So that I can develop a live system

    Scenario: start a project
	Given I am in an empty directory where I want the project to be created
	When I start the project
	Then the directory is populated with a standard project structure
	And I see a message indicating that the project was created
