cask "rawcull" do
  version "1.3.2"
  sha256 "a238002c9d6beeec1bc096c1c799382713b3afdd13db7d0def2991c0dc4e5001"

  url "https://github.com/rsyncOSX/RawCull/releases/download/v#{version}/RawCull.#{version}.dmg"
  name "RawCull"
  desc "Cull large sets of Sony ARW RAW photos"
  homepage "https://github.com/rsyncOSX/RawCull"

  depends_on macos: ">= :tahoe"
  depends_on arch: :arm64

  app "RawCull.app"

  zap trash: [
    "~/Library/Application Support/RawCull",
    "~/Library/Preferences/com.rsyncOSX.RawCull.plist",
  ]
end
