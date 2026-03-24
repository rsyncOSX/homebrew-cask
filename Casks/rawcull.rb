cask "rawcull" do
  version "1.2.1"
  sha256 "40f082a832d3d7110db945df6587fbdddbb2436e4207366b17f3bc881241ab68"
 
  url "https://github.com/rsyncOSX/RawCull/releases/download/v#{version}/RawCull.#{version}.dmg"
  name "RawCull"
  desc "Cull large sets of Sony ARW raw photos"
  homepage "https://github.com/rsyncOSX/RawCull"

  depends_on macos: ">= :tahoe"
  depends_on arch: :arm64
 
  app "RawCull.app"
 
  zap trash: [
    "~/Library/Preferences/com.rsyncOSX.RawCull.plist",
    "~/Library/Application Support/RawCull",
  ]
end
