cask "rawcull" do
  version "1.8.7"
  sha256 "7aca2d09f97fc6cf5212770c012b9bc3b473c6b21a53c90272794814547cb4f8"

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
