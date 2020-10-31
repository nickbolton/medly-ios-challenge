source 'https://github.com/CocoaPods/Specs.git'

platform :ios, '11.0'
use_frameworks!
inhibit_all_warnings!

target 'Medly-ios-challenge' do
  pod 'MobileKit/iOSApplication', :path => '~/src/pixelbleed/mobilekit'
  pod 'Alamofire', '~> 4.7'
  pod 'AlamofireNetworkActivityIndicator', '~> 2.2'
  pod 'AlamofireNetworkActivityLogger', '~> 2.3'
  pod 'HTTPStatusCodes', '~> 3.2'
  pod 'ReachabilitySwift', '~> 4.2'
  pod 'Firebase/Core'
  pod 'Firebase/RemoteConfig'
end

post_install do |installer|
    installer.pods_project.targets.each do |target|
        if target.name == 'Gifu'
            target.build_configurations.each do |config|
                config.build_settings['SWIFT_VERSION'] = '3.2'
            end
        end
        if target.name == 'Cache' || target.name == 'AlamofireNetworkActivityIndicator' || target.name == 'SnapKit' || target.name == 'Siesta'
            target.build_configurations.each do |config|
                config.build_settings['SWIFT_VERSION'] = '4.0'
            end
        else 
            target.build_configurations.each do |config|
                config.build_settings['SWIFT_VERSION'] = '4.2'
            end
        end
    end
end
