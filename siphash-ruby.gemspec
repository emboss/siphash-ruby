version = '0.0.1'

Gem::Specification.new do |s|

  s.name = 'siphash'
  s.version = version

  s.author = 'Martin Bosslet'
  s.email = 'Martin.Bosslet@gmail.com'
  s.homepage = 'https://github.com/emboss/siphash-ruby'
  s.summary     = "A Ruby implementation of SipHash."
  s.description = "A Ruby implementation of SipHash."

  s.required_ruby_version     = '>= 1.9.3'

  s.files = Dir.glob('{lib,spec}/**/*')
  s.files += ['LICENSE']
  s.extra_rdoc_files = [ "README.md" ]
  s.require_path = "lib"
  s.license = 'MIT'

end