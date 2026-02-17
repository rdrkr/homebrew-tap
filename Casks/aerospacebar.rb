cask "aerospacebar" do
  version "1.0.0-beta.2"
  sha256 "9ce6df86e82eca7fc68febf3d183de51713df562b15fa50fa259bf24a18372eb"

  url "https://github.com/rdrkr/aerospacebar-app/releases/download/v#{version}/AeroSpaceBar-v#{version}.zip"
  name "AeroSpaceBar"
  desc "Modern macOS menu bar application for managing AeroSpace window manager"
  homepage "https://github.com/rdrkr/aerospacebar-app"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sequoia"

  app "AeroSpaceBar.app"

  zap trash: [
    "~/Library/Application Support/com.rdrkr.AeroSpaceBar",
    "~/Library/Caches/com.rdrkr.AeroSpaceBar",
    "~/Library/Preferences/com.rdrkr.AeroSpaceBar.plist",
  ]
end
