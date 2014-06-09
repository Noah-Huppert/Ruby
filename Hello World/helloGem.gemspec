Gem::Specification.new do |s|
  s.name = "helloGem"
  s.version = "0.0.1"
  s.date = "2014-06-08"
  s.summary = "helloGem"
  s.description = "A test gem"
  s.authors = ["Noah Huppert"]
  s.email = "noahhuppert@gmail.com"
  s.files = ["lib/helloGem.rb"]
  s.add_runtime_dependency "json", [">= 1.8.1"]
end
