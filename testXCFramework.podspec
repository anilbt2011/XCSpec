Pod::Spec.new do |s|
  s.name         = "testXCFramework"
  s.version      = "1.0.0"
  s.summary      = "A brief description of MyFramework project."
  s.description  = <<-DESC
  An extended description of MyFramework project.
  DESC
  s.homepage     = "http://your.homepage/here"
  s.license = { :type => 'Copyright', :text => <<-LICENSE
                 Copyright 2018
                 Permission is granted to...
                LICENSE
              }
  s.author             = { "$(git config user.name)" => "$(git config user.email)" }
  s.source       = { :git => "git@github.com:anilbt2011/testXCFramework.git", :tag => "#{s.version}" }
  # s.source        = { :http => "https://dl.inmobi.com/inmobi-sdk/IM/InMobi-iOS-SDK-9.1.8.zip"}
  s.vendored_frameworks = "InMobiSDK.xcframework"
  s.platform = :ios
  s.swift_version = "4.2"
  s.ios.deployment_target  = '12.0'

  s.frameworks = "WebKit"

  s.libraries = "sqlite3.0"

  s.xcconfig = { 'OTHER_LDFLAGS' => '-ObjC' }

  # s.default_subspecs = 'InMobiSDK'

  # s.subspec 'InMobiSDK' do |sdk|
  #   sdk.dependency              'InMobiSDK/Core'
  # end
end