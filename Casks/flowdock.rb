cask 'flowdock' do
  version '1.2.7'
  sha256 '80cce5d7062ca5e24189d268bb6b0c08ce732c5039156bbe393c0bdecec5eadd'

  # amazonaws.com is the official download host per the appcast feed
  url "https://s3.amazonaws.com/flowdock-resources/mac/#{version}/Flowdock.zip"
  # amazonaws.com verified as official when first introduced to the cask
  appcast 'https://s3.amazonaws.com/flowdock-resources/mac/appcast.xml',
          checkpoint: '05c0917ea74ed402ec6f41dac60a62549f062e7a2f983f410a860d324cdcf976'
  name 'Flowdock'
  homepage 'https://www.flowdock.com/'
  license :gratis

  app 'Flowdock.app'
end
