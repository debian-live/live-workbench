module LiveWorkbench
    BASE_DIR=[File.join(File.dirname(__FILE__),'..','..','data','live-workbench'),
	'/usr/share/live-workbench',
	'/usr/local/share/live-workbench'].each do |dir|
	next unless File.directory? dir
	break File.expand_path(dir)
    end

    class Config < Hash
	def initialize
	    super
	    self[:template_dir]=File.join(BASE_DIR,'templates')
	end
    end
end

