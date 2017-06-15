Pod::Spec.new do |s|
    s.name         = 'TIMSDK-iOS'
    s.version      = '3.0.2-beta1'
    s.summary      = 'Tencent QCloud IM SDK for iOS'
    s.homepage     = 'https://github.com/litt1e-p/TIMSDK-iOS'
    s.license      = { :type => 'Copyright', :text => 'Copyright ©2013-2017 Qcloud.com' }
    s.author       = { "litt1e-p" => "https://github.com/litt1e-p" }
    s.source       = { :http => "http://dldir1.qq.com/hudongzhibo/im/IM_iOS_SDK_3.0.2.zip", :sha1 => '3810e708a300c9357d981ae229cf4afc6bf56e93' }
#s.source       = { :http => "http://127.0.0.1:3000/file/IM_iOS_SDK_3.0.2.zip", :sha1 => '3810e708a300c9357d981ae229cf4afc6bf56e93' }
    s.ios.deployment_target = '7.0'
    s.frameworks = 'SystemConfiguration','CoreTelephony', 'UIKit', 'Foundation'
    s.libraries = 'c++','z','sqlite3','stdc++.6'
    s.xcconfig = { 'OTHER_LDFLAGS' => '-ObjC'}
    s.requires_arc = true
    s.default_subspecs = 'Base','Message', 'Group', 'Friendship', 'Bugly', 'QALHttp'

    s.subspec 'Base' do |sp|
    sp.vendored_frameworks = "IM_iOS_SDK_3.0.2/libs/ImSDK.framework", "IM_iOS_SDK_3.0.2/libs/QALSDK.framework", "IM_iOS_SDK_3.0.2/libs/TLSSDK.framework"
    end

    s.subspec 'Message' do |sp|
        sp.vendored_frameworks = "IM_iOS_SDK_3.0.2/libs/IMMessageExt.framework"
        sp.dependency 'TIMSDK-iOS/Base'
    end

    s.subspec 'Group' do |sp|
        sp.vendored_frameworks = "IM_iOS_SDK_3.0.2/libs/IMGroupExt.framework"
        sp.dependency 'TIMSDK-iOS/Base'
        sp.dependency 'TIMSDK-iOS/Message'
    end

    s.subspec 'Friendship' do |sp|
        sp.vendored_frameworks = "IM_iOS_SDK_3.0.2/libs/IMFriendshipExt.framework"
        sp.dependency 'TIMSDK-iOS/Base'
        sp.dependency 'TIMSDK-iOS/Message'
    end

    s.subspec 'Bugly' do |sp|
        sp.vendored_frameworks = "IM_iOS_SDK_3.0.2/libs/IMSDKBugly.framework"
        sp.dependency 'TIMSDK-iOS/Base'
    end

    s.subspec 'QALHttp' do |sp|
        sp.vendored_frameworks = "IM_iOS_SDK_3.0.2/libs/QALHttpSDK.framework"
        sp.dependency 'TIMSDK-iOS/Base'
    end
end
