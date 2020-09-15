# Uncomment this line to define a global platform for your project
# platform :ios, '9.0'

source 'https://github.com/CocoaPods/Specs.git'

target 'MvmModulizedMainProject' do
  
  pod 'MvmHome', :path => 'MvmHomeModule/MvmHome'
  pod 'MvmHome/MvmHomeModule', :path => 'MvmHomeModule/MvmHome'
  
  pod 'MvmMine', :path => 'MvmMineModule/MvmMine'
  pod 'MvmMine/MvmMineModule', :path => 'MvmMineModule/MvmMine'
  
  pod 'MvmCTMediator',:path => 'MvmCTMediator/MvmCTMediator'

end

target 'MvmHomeModule' do
  pod 'CTMediator'
  # 如果 Home 要 跳转到 mine
  pod 'MvmMine', :path => 'MvmMineModule/MvmMine'
end



target 'MvmMineModule' do
  pod 'CTMediator'
end
