$LOAD_PATH << File.join(File.dirname(__FILE__),".." ,".." ,"lib" )
require 'live-workbench'
require 'live-workbench/cli'
require 'tempfile'

def in_current_dir(&block)
    Dir.chdir(@project_dir, &block)
end

def run(command)
    stderr_file = Tempfile.new('live-workbench')
    stderr_file.close
    in_current_dir do
	@last_stdout = `#{command} 2> #{stderr_file.path}`
	@last_exit_status = $?.exitstatus
    end
    @last_stderr = IO.read(stderr_file.path)
end

def run_lw opts
    run "#{LiveWorkbench::RUBY_BINARY} #{LiveWorkbench::BINARY} #{opts}" 
end

def with_lw
  capture_streams do |stdout,stderr|
    @lw||=LiveWorkbench::CLI.new(stdout,stderr)
    yield @lw
  end
end

def capture_streams
    stdout=StringIO.new
    stderr=StringIO.new
    yield stdout,stderr
    @last_stdout=stdout.string
    @last_stderr=stderr.string
end

