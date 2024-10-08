cask "font-sans-forgetica" do
  version :latest
  sha256 :no_check

  url "https://sansforgetica.rmit.edu.au/Common/Zips/Sans%20Forgetica.zip"
  name "Sans Forgetica"
  homepage "https://sansforgetica.rmit.edu.au/"

  disable! date: "2024-09-13", because: :no_longer_available

  font "Sans Forgetica/SansForgetica-Regular.otf"

  # No zap stanza required
end
