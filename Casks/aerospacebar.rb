cask "aerospacebar" do
  version "1.0.0"
  sha256 "b3673edb3393322ec0b79807bfc1dd1a0ca60489ad441270e205e8b462e8a69f"

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
