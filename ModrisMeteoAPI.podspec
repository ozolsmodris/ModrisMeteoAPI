Pod::Spec.new do |s|
    s.name             = 'ModrisMeteoAPI'
    s.version          = '0.1.2'
    s.summary          = 'ModrisMeteoAPI is API framework'
    s.description      = <<-DESC
    API framework to retrieve metrology station data
                   DESC
    s.homepage         = 'https://github.com/ozolsmodris/ModrisMeteoAPI'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { 'Modris Ozols' => 'modris.ozols@testdevlab.com' }
    s.source           = { :git => 'https://github.com/ozolsmodris/ModrisMeteoAPI.git', :tag => s.version.to_s }
    # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

    s.ios.deployment_target = '13.0'
    s.swift_versions = "5"

    s.source_files = 'ModrisMeteoAPI/Classes/**/*'
  
end
