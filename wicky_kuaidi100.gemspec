# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'wicky_kuaidi100/version'

Gem::Specification.new do |spec|
  spec.name          = "wicky_kuaidi100"
  spec.version       = WickyKuaidi100::VERSION
  spec.authors       = ["superricky"]
  spec.email         = ["shiyongjian1991@163.com"]
  spec.summary       = %q{处女包}
  spec.description   = %q{这是我的第一个Gem测试包}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
