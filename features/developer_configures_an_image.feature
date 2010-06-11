Feature: developer creates an image configuration

    The developer types a command from the top-level project directory and sees
    a message indicating that an image auto-configuration was created.

@new_project_dir
    Scenario: create an image auto-configuration using defaults
	Given I am in the project top-level directory
	When I run live-workbench auto
	Then auto scripts are created for a default configuration
	And I see "Auto-configuration created from default template"
