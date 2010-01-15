Given /^I am in an empty directory where I want the project to be created$/ do
  Dir.new('.').count <= 2
end

When /^I start the project$/ do
  pending
end

Then /^the directory is populated with a standard project structure$/ do
  pending
end

Then /^I see a message indicating that the project was created$/ do
  pending
end

Given /^I am in the project top\-level directory$/ do
  pending
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

