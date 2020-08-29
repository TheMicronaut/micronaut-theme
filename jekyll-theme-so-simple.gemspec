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

  spec.add_runtime_dependency "jekyll", "~> 3.9.0"
  spec.add_runtime_dependency "jekyll-paginate", "~> 1.1.0"
  spec.add_runtime_dependency "jekyll-sitemap", "~> 1.4.0"
  spec.add_runtime_dependency "jekyll-gist", "~> 1.5.0"
  spec.add_runtime_dependency "jekyll-feed", "~> 0.13.0"
  spec.add_runtime_dependency "jekyll-data", "~> 1.0"
  spec.add_runtime_dependency "jekyll-seo-tag", "~> 2.6.1"
  spec.add_runtime_dependency "jemoji", "~> 0.11.1"
  spec.add_runtime_dependency "jekyll-redirect-from", "~> 0.15.0"
  spec.add_runtime_dependency "tzinfo-data", "~> 1.2019.3"
  spec.add_runtime_dependency "jekyll-theme-primer", "~> 0.5.4"
  
  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake", ">= 12.3.3"
  spec.add_runtime_dependency "kramdown-parser-gfm", "~> 1.1.0"
end
