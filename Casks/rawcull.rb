cask "rawcull" do
  version "1.9.1"
  sha256 "032474410d5f4bef14e3704b06e1001070d6ebfc0a4208ddeefb5339fe278ca0"

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
