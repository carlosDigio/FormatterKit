Pod::Spec.new do |s|
  s.name      = 'FormatterKit'
  s.version   = '1.9.0'
  s.license   = { :type => 'MIT' }
  s.summary   = '`stringWithFormat:` for the sophisticated hacker set.'
  s.homepage  = 'https://github.com/FormatterKit/FormatterKit'
  s.social_media_url = 'https://twitter.com/mattt'
  s.author    = { 'Mattt' => 'mattt@me.com' }
  s.source    = { :git => 'https://github.com/FormatterKit/FormatterKit.git',
                  :tag => s.version
                }

  s.description = "FormatterKit is a collection of well-crafted NSFormatter subclasses for things like units of information, distance, and relative time intervals. Each formatter abstracts away the complex business logic of their respective domain, so that you can focus on the more important aspects of your application."

  s.ios.deployment_target = '9.3'
  s.osx.deployment_target = '10.10'
  s.watchos.deployment_target = '2.0'
  s.tvos.deployment_target = '9.0'

  s.requires_arc = true

  s.subspec 'Resources' do |ss|
    ss.resources = 'FormatterKit/FormatterKit.bundle'
    ss.source_files = 'FormatterKit/NSBundle+FormatterKit.{h,m}'
  end

  s.subspec 'TimeIntervalFormatter' do |ss|
    ss.source_files = 'FormatterKit/TTTTimeIntervalFormatter.{h,m}'
    ss.dependency 'FormatterKit/Resources'
  end
end
