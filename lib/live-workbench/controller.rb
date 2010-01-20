module LiveWorkbench
    class Controller
	attr_accessor :config

	def initialize
	    @config=Config.new
	end

	def init template='default'
	    template_dir=File.join(config[:template_dir],template,'.')
	    # FIXME: destination needs to be verified
	    FileUtils.cp_r template_dir,'.'
	end
    end
end
