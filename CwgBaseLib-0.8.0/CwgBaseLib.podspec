Pod::Spec.new do |s|
  s.name = "CwgBaseLib"
  s.version = "0.8.0"
  s.summary = "\u8FD9\u662F\u4E00\u4E2A\u7B80\u5355\u7684\u4ECB\u7ECD"
  s.license = {"type"=>"MIT", "file"=>"LICENSE"}
  s.authors = {"changwuguo"=>"changwuguo@@qq.com"}
  s.homepage = "https://github.com/changwuguo/CwgBaseLib"
  s.description = "\u8FD9\u662F\u4E00\u4E2A\u590D\u6742\u7684\u4ECB\u7ECD\uFF0C\u8BE6\u7EC6\u7684\u4FE1\u606F\u53EF\u4EE5\u5199\u5728\u8FD9\u91CC"
  s.frameworks = ["UIKit", "Foundation"]
  s.source = { :path => '.' }

  s.ios.deployment_target    = '9.0'
  s.ios.vendored_framework   = 'ios/CwgBaseLib.embeddedframework/CwgBaseLib.framework'
end
