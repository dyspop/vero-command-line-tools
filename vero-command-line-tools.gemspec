# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'vero/command/line/tools/version'

Gem::Specification.new do |spec|
  spec.name          = "vero-command-line-tools"
  spec.license       = ""
  spec.version       = Vero::Command::Line::Tools::VERSION
  spec.authors       = ["Dan Black"]
  spec.email         = ["dyspop@gmail.com"]

  spec.summary       = %q{Command line tools for working with Vero}
  spec.homepage      = "https://github.com/dyspop/vero-command-line-tools"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency('rdoc')
  spec.add_development_dependency('aruba')
  spec.add_dependency('methadone', '~> 1.9.5')
  spec.add_development_dependency('test-unit')
end
