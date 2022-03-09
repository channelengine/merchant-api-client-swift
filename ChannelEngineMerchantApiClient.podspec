Pod::Spec.new do |s|
  s.name = 'ChannelEngineMerchantApiClient'
  s.ios.deployment_target = '9.0'
  s.osx.deployment_target = '10.11'
  s.tvos.deployment_target = '9.0'
  s.watchos.deployment_target = '3.0'
  s.version = '2.9.12'
  s.source = { :git => 'git@github.com:OpenAPITools/openapi-generator.git', :tag => 'v2.9.12' }
  s.authors = 'support@channelengine.com'
  s.license = 'Proprietary'
  s.homepage = 'https://www.channelengine.com'
  s.summary = 'ChannelEngineMerchantApiClient Swift SDK'
  s.description = 'ChannelEngine Merchant API Client for swift'
  s.source_files = 'ChannelEngineMerchantApiClient/Classes/**/*.swift'
  s.dependency 'AnyCodable-FlightSchool', '~> 0.4.0'
end
