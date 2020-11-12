# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'bilisim_sozlugu/version'

Gem::Specification.new do |spec|
  spec.name          = "bilisim_sozlugu"
  spec.version       = BilisimSozlugu::VERSION
  spec.authors       = ["Ender Ahmet Yurt"]
  spec.email         = ["enderyurt@gmail.com"]
  spec.summary       = "Translate Computer Terms from English to Turkish."
  spec.description   = "Translating English terms related to Computer Sciences to Turkish from Informatics Association of Turkey's offical website."
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = 'sozluk'
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "nokogiri", ">= 1.10.8"
  spec.add_dependency "terminal-table"
  spec.add_dependency "sorbet-runtime"
end
