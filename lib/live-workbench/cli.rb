module LiveWorkbench
    class CLI
	attr_accessor :output_stream,:error_streamm

	def initialize(output_stream=STDOUT,error_stream=STDERR,controller=Controller.new)
	    @output_stream=output_stream
	    @error_stream=error_stream
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
	    @output_stream.puts "Project created from #{template} template"
	end

	def auto template='default'
	    @controller.auto template
	    @output_stream.puts "Auto-configuration created from #{template} template"
	end
    end
end

