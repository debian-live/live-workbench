require File.dirname(__FILE__) + '/../spec_helper'
require 'live-workbench/cli'

describe LiveWorkbench::CLI do
    before :each do
	@controller=mock('controller',:init=>true)
	@output_stream=mock('output_stream')
	@error_stream=mock('error_stream')
	@lw=LiveWorkbench::CLI.new(@output_stream,@error_stream,@controller)
    end

    describe '#init' do
	it 'should use default template by default' do
	    @output_stream.should_receive(:puts).with('Project created from default template')
	    @lw.init
	end

	it 'should use specified template' do
	    @output_stream.should_receive(:puts).with('Project created from fancy template')
	    @lw.init('fancy')
	end
    end
end

