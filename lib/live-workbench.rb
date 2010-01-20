require 'live-workbench/config'
require 'live-workbench/controller'

module LiveWorkbench
    def self.new *args
	Controller.new *args
    end
end
