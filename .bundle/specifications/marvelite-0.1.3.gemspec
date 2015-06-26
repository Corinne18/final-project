# -*- encoding: utf-8 -*-
# stub: marvelite 0.1.3 ruby lib

Gem::Specification.new do |s|
  s.name = "marvelite"
  s.version = "0.1.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Antonio Antillon"]
  s.date = "2014-07-25"
  s.description = "Simple wrapper around the Marvel Comics API"
  s.email = ["antillas21@gmail.com"]
  s.homepage = ""
  s.licenses = ["MIT"]
  s.required_ruby_version = Gem::Requirement.new(">= 1.9.2")
  s.rubygems_version = "2.4.3"
  s.summary = "Simple wrapper around the Marvel Comics API"

  s.installed_by_version = "2.4.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<httparty>, ["~> 0.12.0"])
      s.add_runtime_dependency(%q<hashie>, ["~> 2.0.5"])
      s.add_development_dependency(%q<bundler>, ["~> 1.3"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<pry>, [">= 0"])
      s.add_development_dependency(%q<rspec>, [">= 0"])
      s.add_development_dependency(%q<fakeweb>, ["~> 1.3"])
    else
      s.add_dependency(%q<httparty>, ["~> 0.12.0"])
      s.add_dependency(%q<hashie>, ["~> 2.0.5"])
      s.add_dependency(%q<bundler>, ["~> 1.3"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<pry>, [">= 0"])
      s.add_dependency(%q<rspec>, [">= 0"])
      s.add_dependency(%q<fakeweb>, ["~> 1.3"])
    end
  else
    s.add_dependency(%q<httparty>, ["~> 0.12.0"])
    s.add_dependency(%q<hashie>, ["~> 2.0.5"])
    s.add_dependency(%q<bundler>, ["~> 1.3"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<pry>, [">= 0"])
    s.add_dependency(%q<rspec>, [">= 0"])
    s.add_dependency(%q<fakeweb>, ["~> 1.3"])
  end
end
