Gem::Specification.new do |s|
  s.name = 'rubymas'
  s.version = '0.2.1'
  s.date = '2020-08-03'
  s.summary = 'Adapter for connecting to Mas90'
  s.description = 'Your MAS90 program may vary depending on implmentation'
  s.authors= ['Andrew Gauger']
  s.email = 'andygauge@gmail.com'
  s.files = Dir['lib/**/*.rb']
  s.homepage = 'https://github.com/andygauge/rubymas'
  s.license = 'MIT'
  s.add_runtime_dependency 'net-telnet'
end