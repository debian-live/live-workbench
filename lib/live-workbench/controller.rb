require 'fileutils'
require 'find'

module LiveWorkbench
    class Controller
	attr_accessor :config

	def initialize
	    @config=Config.new
	end

	def init template='default'
	    template_dir=File.join(config[:template_dir],template)
	    # FIXME: destination needs to be verified
	    template_files=[]
	    Find.find(template_dir) do |path|
		next if path == template_dir
	        Find.prune if FileTest.directory? path
		template_files << path
	    end
	    FileUtils.cp template_files,'.'
	end

	def auto template='default'
	    template_dir=File.join(config[:template_dir],template,'auto')
	    # FIXME: destination needs to be verified
	    FileUtils.cp_r template_dir,'auto'
	end
    end
end
