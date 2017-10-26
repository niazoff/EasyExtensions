Pod::Spec.new do |s|
s.name             = 'EasyExtensions'
s.version          = '0.1.3'
s.summary          = 'A growing collection of simple and easy to use Swift extensions.'

s.description      = <<-DESC
EasyExtensions makes it easier and funner than ever before to code in Swift! EasyExtensions is also a growing collection so don't forget to keep an eye out for updates!
DESC

s.homepage         = 'https://github.com/niazoff/EasyExtensions'
s.license          = { :type => 'MIT', :file => 'LICENSE' }
s.author           = { 'Natanel' => 'Niazoff' }
s.source           = { :git => 'https://github.com/niazoff/EasyExtensions.git', :tag => s.version.to_s }

s.ios.deployment_target = '10.0'
s.source_files = '*'

end
