require File.dirname(__FILE__) + '/../spec_helper'
require 'live-workbench/cli'

describe LiveWorkbench::CLI do
    before :each do
	@controller=mock('controller',:init=>true)
	@messenger=mock('messenger')
	@lw=LiveWorkbench::CLI.new(@messenger,@controller)
    end

    describe '#init' do
	it 'should use default template by default' do
	    @messenger.should_receive(:puts).with('Project created from default template')
	    @lw.init
	end

	it 'should use specified template' do
	    @messenger.should_receive(:puts).with('Project created from fancy template')
	    @lw.init('fancy')
	end
    end
end

