# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{dash-sinatra}
  s.version = "0.7.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["FiveRuns Development Team"]
  s.date = %q{2009-01-30}
  s.description = %q{Provides an API to send metrics from Sinatra applications to the FiveRuns Dash service}
  s.email = %q{dev@fiveruns.com}
  s.files = ["README.rdoc", "Rakefile", "version.yml", "lib/fiveruns_dash_sinatra.rb"]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/fiveruns/dash-sinatra}
  s.rdoc_options = ["--inline-source", "--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{fiveruns}
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{Fiveruns Dash recipe for Sinatra}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<fiveruns-dash-ruby>, [">= 0.7.1"])
    else
      s.add_dependency(%q<fiveruns-dash-ruby>, [">= 0.7.1"])
    end
  else
    s.add_dependency(%q<fiveruns-dash-ruby>, [">= 0.7.1"])
  end
end
