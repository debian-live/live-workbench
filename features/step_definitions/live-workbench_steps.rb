require 'tmpdir'

Given /^I am in an empty directory where I want the project to be created$/ do
  Dir.new(Dir.pwd).count.should <= 2
end

When /^I run live-workbench (.*)$/ do |live_workbench_opts|
      run "#{LiveWorkbench::RUBY_BINARY} #{LiveWorkbench::BINARY} #{live_workbench_opts}"
end

When /^I start the project$/ do
  @output_stream=StringIO.new
  @error_stream=StringIO.new
  lw=LiveWorkbench::CLI.new(@output_stream,@error_stream)
  lw.init
end

Then /^the directory is populated with a standard project structure$/ do
  Dir['*','*/**'].sort.should == ["AUTHORS", "COPYING", "Makefile", "README", "TODO",
    "scripts", "scripts/build", "scripts/clean", "scripts/config"]
end

Then /^I see a message indicating that the project was created$/ do
  @output_stream.string.split("\n").should include("Project created from default template")
end

Given /^I am in the project top\-level directory$/ do
  @output_stream=StringIO.new
  @error_stream=StringIO.new
  lw=LiveWorkbench::CLI.new(@output_stream,@error_stream)
  lw.init
end

Given /^an image configuration exists$/ do
  pending
end

When /^I build an image without specifying parameters$/ do
  pending
end

Then /^an image build is started$/ do
  pending
end

Then /^I see colorized output as it progresses$/ do
  pending
end

Then /^I see a successful build message including path to the built image$/ do
  pending
end

When /^I configure an image without specifying parameters$/ do
  pending
end

Then /^scripts are created for a default configuration$/ do
  pending
end

Then /^I see a message indicating that the image configuration was created using defaults$/ do
  pending
end

