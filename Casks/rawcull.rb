cask "rawcull" do
  version "1.8.0"
  sha256 "4fc6713d1f90c4aad17483af52ede1de9c2c61ce86f408f33bd3ed88a6868173"

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
