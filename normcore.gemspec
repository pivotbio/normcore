Gem::Specification.new do |s|
  s.name        = 'normcore'
  s.version     = '0.0.1'
  s.date        = '2017-02-12'
  s.summary     = 'Generate numbers from a normal distribution'
  s.description = 'Generate random numbers from a Normal/Gaussian distribution'
  s.authors     = ['Austin Davis-Richardson']
  s.email       = 'harekrishna@gmail.com'
  s.files       = Dir['./lib/*.rb'] + ['bin/normcore']
  s.executables = ['normcore']
  s.extra_rdoc_files = [
    'readme.md'
  ]
  s.homepage    = 'https://github.com/pivotbio/normcore'
  s.license     = 'MIT'
end
