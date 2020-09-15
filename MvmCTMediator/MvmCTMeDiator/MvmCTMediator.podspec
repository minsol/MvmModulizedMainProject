#
#  Be sure to run `pod spec lint CTMediator.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|

    spec.name         = "MvmCTMediator"
    spec.version      = "0.0.1"
    spec.summary      = "基于 CTMediator "

    spec.homepage     = "http://gitlab.mvmtv.cn/iOS/MVMCocoa/tree/master/MvmCTMediator"
    # spec.license      = "MIT (example)"

    spec.author       = { "minsol" => "minsol@mvmtv.com" }
    spec.platform     = :ios, "9.0"
    spec.source       = { :git => "http://gitlab.mvmtv.cn/iOS/MVMCocoa.git", :tag => "MvmCTMediator_#{spec.version}" }
    spec.requires_arc = true
    spec.source_files = "CTMediator/*.{h,m}"
    spec.dependency "CTMediator"
end
