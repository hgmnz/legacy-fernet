# -*- encoding: utf-8 -*-
require File.expand_path('../lib/fernet/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Harold Giménez"]
  gem.email         = ["harold.gimenez@gmail.com"]
  gem.description   = %q{Delicious HMAC Digest(if) authentication and encryption}
  gem.summary       = %q{Easily generate and verify AES encrypted HMAC based authentication tokens}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "legacy-fernet"
  gem.require_paths = ["lib"]
  gem.version       = Fernet::Legacy::VERSION

  gem.add_dependency "multi_json", "~> 1.0"
end
