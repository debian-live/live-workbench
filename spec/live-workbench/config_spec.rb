require File.dirname(__FILE__) + '/../spec_helper'

describe LiveWorkbench::Config do
    before :each do
	@config=LiveWorkbench::Config.new
    end

    it 'should find a template_dir containing a default template' do
	File.directory?(File.join(@config[:template_dir],'default')).should == true
    end
end
