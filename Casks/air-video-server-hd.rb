cask 'air-video-server-hd' do
  version '2.2.1u1'
  sha256 'c682c27e4db10b1a6c83d7021027aefce589e6a3dac5782fec55108646c9b6e8'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/AirVideoHD/Download/Air+Video+Server+HD+#{version}.dmg"
  # amazonaws.com verified as official when first introduced to the cask
  appcast 'https://s3.amazonaws.com/AirVideoHD/Download/appcast.xml',
          checkpoint: 'e327ff4f0f6128267a1ef1af2e92086228a69d43203823ff4ce9cdb435bdeaf7'
  name 'Air Video Server HD'
  homepage 'http://www.inmethod.com/airvideohd'
  license :gratis

  app 'Air Video Server HD.app'

  zap delete: [
                '~/Library/Caches/com.inmethod.AirVideoServerHD',
                '~/Library/Logs/AirVideoServerHD',
                '~/Library/Preferences/com.inmethod.AirVideoServerHD.plist',
              ]
end
