# coding: utf-8

Gem::Specification.new do |spec|
  spec.name                    = "jekyll-theme-so-simple"
  spec.version                 = "3.1.0"
  spec.authors                 = ["Michael Rose"]

  spec.summary                 = %q{A simple Jekyll theme for words and pictures.}
  spec.homepage                = "https://github.com/mmistakes/minimal-mistakes"
  spec.license                 = "MIT"

  spec.metadata["plugin_type"] = "theme"

  spec.files                   = `git ls-files -z`.split("\x0").select do |f|
    f.match(%r{^(assets|_(data|includes|layouts|sass)/|(LICENSE|README|CHANGELOG)((\.(txt|md|markdown)|$)))}i)
  end

  spec.add_runtime_dependency "jekyll", "~> 3.7.4"
  spec.add_runtime_dependency "jekyll-paginate", "~> 1.1.0"
  spec.add_runtime_dependency "jekyll-sitemap", "~> 1.2.0"
  spec.add_runtime_dependency "jekyll-gist", "~> 1.5.0"
  spec.add_runtime_dependency "jekyll-feed", "~> 0.11.0"
  spec.add_runtime_dependency "jekyll-data", "~> 1.0"
  spec.add_runtime_dependency "jekyll-seo-tag", "~> 2.5.0"
  spec.add_runtime_dependency "jemoji", "~> 0.10.1"
  spec.add_runtime_dependency "jekyll-redirect-from", "~> 0.13.0"
  spec.add_runtime_dependency "tzinfo-data", "~> 1.2018.7"
  spec.add_runtime_dependency "jekyll-theme-primer", "~> 0.5.3"
  
  spec.add_development_dependency "bundler", "~> 1.16.1"
  spec.add_development_dependency "rake", "~> 10.0"
end
