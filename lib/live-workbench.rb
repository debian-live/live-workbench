require 'live-workbench/config'
require 'live-workbench/core'

module LiveWorkbench
    def self.new *args
	Core.new *args
    end
end
