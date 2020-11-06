require_relative 'lib/rules_ai/version'

Gem::Specification.new do |spec|
  spec.name          = "rules_ai"
  spec.version       = RulesAi::VERSION
  spec.authors       = ["Gitea"]
  spec.email         = ["gitea@fake.local"]

  spec.summary       = %q{Ruby gem for providing rules based functionalities for non machine learning portions of AI.}
  spec.description   = %q{This is a collection of different rules based functions, from calculating how many hours have passed, tesla multiplication, autonomous prompting ( such as a morning promptor ), user greeting, randomized rot13 alphabets, and calculating the size of a comic digest.}
  spec.homepage      = "https://lwflouisa.github.io/Weaver-AI"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
