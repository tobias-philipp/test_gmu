Pod::Spec.new do |s|
    s.name             = "GMapUtils"
    s.version          = "0.1.0"
    s.swift_version    = '5.2'
    s.summary          = "Google map utils for iOS as dynamic library."
    s.description      = <<-DESC
  Features
    Expose the marker clustering from Google Map's static library as a pod.
  DESC
    s.homepage         = "https://github.com/"
    s.license          = 'MIT'
    s.author           = { "xpureTobias" => "tobias.philipp.ext@urban-mobility.io" }
    s.source           = { :git => "https://github.com/xpureTobias/test_gmu.git", :tag => s.version.to_s }
  
    s.platform     = :ios, '12.0'
    s.requires_arc = true
  
    s.dependency 'GoogleMaps'
  end