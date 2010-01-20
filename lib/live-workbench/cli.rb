module LiveWorkbench
    class CLI
	def initialize(messenger=STDOUT,controller=Controller.new)
	    @messenger=messenger
	    @controller=controller
	end

	def init template='default'
	    @controller.init template
	    @messenger.puts "Project created from #{template} template"
	end
    end
end

