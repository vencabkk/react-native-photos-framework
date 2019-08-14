require 'json'

pkg = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name         = pkg['name']
  s.version      = pkg['version']
  s.summary      = pkg['description']
  s.license      = pkg['license']
  s.requires_arc = true
  s.authors      = pkg['author']
  s.homepage     = pkg['homepage']
  s.platform     = :ios, "8.0"

  s.source       = { :git => "https://github.com/vencabkk/react-native-photos-framework.git", :tag => "#{s.version}" }
  s.source_files = 'ios/**/*.{h,m}'

  s.dependency 'React'
end
