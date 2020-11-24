Pod::Spec.new do |spec|

  spec.name         = "Herald"
  spec.version      = "1.1.0-beta3"
  spec.summary      = "Reliable Bluetooth communication library for iOS"

  spec.description  = <<-DESC
Herald provides reliable Bluetooth communication and range finding across a wide range of mobile devices, allowing Contact Tracing and other applications to have regular and accurate information to make them highly effective. 

In addition, the Herald community defines suggested payloads to be exchanged over the Herald protocol for a range of applications, both contact tracing payloads (centralised, decentralised, and hybrid) and beyond (E.g. Bluetooth MESH to Consumer app gateway applications.)

Herald supports iOS, Android, and embedded devices.
                   DESC

  spec.homepage     = "https://vmware.github.io/herald"
  spec.license      = { :type => "MIT", :file => "LICENSE.txt" }
  spec.author       = { "adamfowleruk" => "adamfowleruk@gmail.com" }

  spec.ios.deployment_target = "9.3"
  spec.swift_version = "5"

  spec.source        = { :git => "https://github.com/vmware/herald-for-ios.git", :tag => "v#{spec.version}" }
  spec.source_files  = "herald/herald/**/*.{h,m,swift}"

  pod_target_xcconfig = { "EXCLUDED_ARCHS[sdk=iphonesimulator*]" => "arm64" }
  user_target_xcconfig = { "EXCLUDED_ARCHS[sdk=iphonesimulator*]" => "arm64" }

end