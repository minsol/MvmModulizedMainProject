#  local:pod lib lint MvmHome.podspec --allow-warnings --use-libraries
#
#  Be sure to run `pod spec lint MvmHome.podspec --allow-warnings --use-libraries' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|

    spec.name         = "MvmMine"
    spec.version      = "0.0.1"
    spec.summary      = "个人模块"

    spec.homepage     = "http://gitlab.mvmtv.cn/iOS/MVMCocoa/tree/master/MvmMine"
    # spec.license      = "MIT (example)"

    spec.author       = { "minsol" => "minsol@mvmtv.com" }
    spec.platform     = :ios, "9.0"
    spec.source       = { :git => "http://gitlab.mvmtv.cn/iOS/MVMCocoa.git", :tag => "MvmMine_#{spec.version}" }
    spec.requires_arc = true
    
    spec.default_subspec = 'MvmMineCTMediator'

    
    spec.subspec 'MvmMineCTMediator' do |mvmMineCTMediator|
        mvmMineCTMediator.source_files = "CTCategory/*.{h,m}"
        mvmMineCTMediator.dependency "CTMediator"
    end
    
    spec.subspec 'MvmMineModule' do |mvmMineModule|
        mvmMineModule.source_files = "Module/**/*"
    end
    
end
