require File.dirname(__FILE__) + '/../spec_helper'

describe LiveWorkbench::Core do
    before :each do
	@messenger=StringIO.new
	@lw=LiveWorkbench::Core.new @messenger
    end

    describe '#init' do
	it 'should create a directory structure from default' do
	    pending
	end
    end
end

