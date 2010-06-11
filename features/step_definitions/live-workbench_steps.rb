require 'tmpdir'

Given /^I am in an empty directory where I want the project to be created$/ do
  Dir.new(Dir.pwd).count.should <= 2
end

When /^I run live-workbench (.*)$/ do |live_workbench_opts|
  run "#{LiveWorkbench::RUBY_BINARY} #{LiveWorkbench::BINARY} #{live_workbench_opts}"
end

When /^I start the project$/ do
  capture_streams do |stdout,stderr|
      lw=LiveWorkbench::CLI.new(stdout,stderr)
      lw.init
  end
end

Then /^the directory is populated with a standard project structure$/ do
  Dir['*','*/**'].sort.should == ["AUTHORS", "COPYING", "Makefile", "README", "TODO",
    "auto", "auto/build", "auto/clean", "auto/config"]
end

Then /^I see a message indicating that the project was created$/ do
  @last_stdout.split("\n").should include("Project created from default template")
end

Given /^I am in the project top\-level directory$/ do
  capture_streams do |stdout,stderr|
      lw=LiveWorkbench::CLI.new(stdout,stderr)
      lw.init
  end
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

