require File.dirname(__FILE__) + '/../spec_helper'
require 'tmpdir'

describe LiveWorkbench::Controller do
    before :each do
	@controller=LiveWorkbench::Controller.new
	# FIXME: copied from features/support/hooks.rb
	@project_dir=Dir.mktmpdir 'live-workbench_project_'
    end

    after :each do
	# FIXME: copied from features/support/hooks.rb
	FileUtils.rm_rf @project_dir
    end

    describe '#init','(default)' do
	# FIXME: copied from features/step_definitions.rb
	it 'should create a directory structure from default' do
	    Dir.chdir @project_dir
	    @controller.init
	    Dir['*','*/**'].sort.should == ["AUTHORS", "COPYING", "Makefile", "README", "TODO"]
	end
    end

    describe '#auto','(default)' do
	# FIXME: copied from features/step_definitions.rb
	it 'should create auto-config from default' do
	    Dir.chdir @project_dir
	    @controller.init
	    @controller.auto
	    Dir['auto/**'].sort.should == ["auto/build", "auto/clean", "auto/config"]
	end
    end
end

