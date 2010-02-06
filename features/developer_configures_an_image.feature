Feature: developer creates an image configuration

    The developer types a command from the top-level project directory and sees
    a message indicating that an image configuration was created.

@new_project_dir
    Scenario: create an image configuration using defaults
	Given I am in the project top-level directory
	When I run live-workbench config
	Then scripts are created for a default configuration
	And I see a message indicating that the image configuration was created using defaults
