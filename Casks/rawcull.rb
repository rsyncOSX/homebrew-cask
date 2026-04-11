cask "rawcull" do
  version "1.4.7"
  sha256 "54ea53c65d836f70c43ee73843b74b6830b1f75e051e96805dd2b79eb3dab173"

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
