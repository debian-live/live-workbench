require 'tmpdir'

Before('@new_project_dir') do
  @original_dir=Dir.pwd
  @project_dir=Dir.mktmpdir 'live-workbench_project_'
  Dir.chdir @project_dir
end

After('@new_project_dir') do
  Dir.chdir @original_dir
  FileUtils.rm_rf @project_dir
end
