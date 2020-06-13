Pod::Spec.new do |spec|

  spec.name         = "RLS"
  spec.version      = "1.0.0"
  spec.summary      = "Remote Loging System"

  spec.description  = "RLS description"

  spec.homepage     = "https://github.com/DaemonNikolay/RLS-Swift"

  spec.license      = "MIT"

  spec.author             = { "Nikolay Eckert" => "nikolay-eckert@yandex.ru" }

  spec.source       = { :git => "https://github.com/DaemonNikolay/RLS-Swift.git", :tag => "#{spec.version}" }
  spec.source_files  = "RLS/**/*.{swift}", "Classes", "Classes/**/*.{h,m}"

  spec.dependency 'Alamofire', '~> 5.2'
  
  spec.swift_version = "5.0"

end
