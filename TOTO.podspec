Pod::Spec.new do |spec|
  spec.name         = "TOTO"
  spec.version      = "0.0.1"
  spec.summary      = "快捷、易用、用户友好的类型转换工具"
  spec.description  = <<-DESC
			快捷、易用、用户友好的类型转换工具
                   DESC

  spec.homepage     = "https://github.com/kfxiaoxia/TOTO"

  spec.license      = "MIT"

  spec.author             = { "kfxiaoxia" => "kfxiaoxia@gmail.com" }


  spec.platform     = :ios
  spec.platform     = :ios, "9.0"


  spec.source       = { :git => "https://github.com/kfxiaoxia/TOTO.git", :tag => "#{spec.version}" }


  spec.source_files  = "TOTO.swift"
  spec.exclude_files = "Classes/Exclude"


end
