Feature: developer builds an image

    The live system developer types a command from the top level project directory
    and sees the colorized output from a build as it progresses.  After some time,
    the build finishes and the developer sees a message indicating a successful
    build, including the name of the directory where the build products (image,
    log, lists of image contents) have been created. 
    
@new_project_dir
    Scenario: build an image from an existing configuration
	Given I am in the project top-level directory
	And an image configuration exists
	When I run live-workbench build
	Then an image build is started
	And I see colorized output as it progresses
	And I see a successful build message including path to the built image
