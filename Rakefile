desc "Run specs"
begin
  require 'spec/rake/spectask'
rescue LoadError
  task :spec do
    abort 'Run `gem install rspec` to be able to run specs'
  end
else
  Spec::Rake::SpecTask.new do |t|
    t.spec_files = FileList['spec/**/*_spec.rb']
    t.spec_opts  = %w(-fs --color)
    t.warning    = true
  end
end

task :default => :spec