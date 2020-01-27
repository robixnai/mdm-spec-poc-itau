Pod::Spec.new do |s|
    s.name                    = 'MDMNotification'
    s.version                 = '3.4.2.1'
    s.summary                 = 'Hands MDM'
    s.homepage                = 'https://hands.com.br/'

    s.author                  = { 'Name' => 'robson.moreira@hands.com.br' }
    s.license                 = { :type => 'Apache-2.0', :file => 'LICENSE' }

    s.platform                = :ios
    s.source                  = { :http => 'https://nexus.hands.com.br/repository/maven-releases/br/com/hands/mdm/libs/ios/mdm-notification/3.4.2.1/mdm-notification-3.4.2.1.zip' }

    s.ios.deployment_target   = '10.0'
    s.ios.vendored_frameworks = 'MDMNotification.framework'

    s.subspec 'MDM' do |mdm|
        mdm.dependency 'MDMCore', '3.4.2.1'
    end

end
