Pod::Spec.new do |spec|

  spec.name         = "VCASHeSampleSDK"
  spec.version      = "0.0.2"
  spec.summary      = "A CocoaPods library written in Swift"

  spec.description  = <<-DESC
This CocoaPods library helps you perform calculation.
                   DESC

  spec.homepage     = "https://github.com/dusianandakumar/VCASHeSampleSDK"
  spec.license      = { :type => "MIT", :file => "LICENSE" }
  spec.author       = { "Anand" => "anand.dusi@cashe.co.in" }

  spec.ios.deployment_target = "12.1"
  spec.swift_version = "4.2"

  spec.source        = { :git => "https://github.com/dusianandakumar/VCASHeSampleSDK.git", :tag => "#{spec.version}" }
  spec.source_files  = "VCASHeSampleSDK/**/*.{h,m,swift}"
  spec.dependency      'React'

end
