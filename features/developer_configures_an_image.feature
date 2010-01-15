Feature: developer creates an image configuration

    The developer types a command from the top-level project directory and sees
    a message indicating that an image configuration was created.

    Scenario: create an image configuration using defaults
	Given I am in the project top-level directory
	When I configure an image without specifying parameters
	Then scripts are created for a default configuration
	And I see a message indicating that the image configuration was created using defaults
