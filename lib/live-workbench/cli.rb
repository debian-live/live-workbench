module LiveWorkbench
    class CLI
	def initialize(messenger=STDOUT,controller=Controller.new)
	    @messenger=messenger
	    @controller=controller
	end

	def execute args
	    raise ArgumentError,"No command specified" if args.empty?
	    command=args.shift.to_sym
	    raise ArgumentError,"Unrecognized command: #{command}" unless respond_to? command
	    if args.size>0 
		send(command,*args)
	    else
		send command
	    end
	end

	def init template='default'
	    @controller.init template
	    @messenger.puts "Project created from #{template} template"
	end
    end
end

