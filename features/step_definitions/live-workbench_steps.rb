require 'tmpdir'

Given /^I am in an empty directory where I want the project to be created$/ do
end

When /^I run live-workbench (.*)$/ do |opts|
  run_lw opts
end

When /^I start the project$/ do
  with_lw {|lw| lw.init}
end

Then /^the directory is populated with a standard project structure$/ do
  Dir['*','*/**'].sort.should == ["AUTHORS", "COPYING", "Makefile", "README", "TODO"]
end

Then /^I see \"([^"]+)\"$/ do |msg|
  @last_stdout.split("\n").should include msg
end

Given /^I am in the project top\-level directory$/ do
  with_lw {|lw| lw.init}
end

Given /^an image configuration exists$/ do
  with_lw {|lw| lw.auto}
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

Then /^auto scripts are created for a default configuration$/ do
  Dir['auto/**'].sort.should == ["auto/build", "auto/clean", "auto/config"]
end

