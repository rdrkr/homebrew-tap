cask "aerospacebar" do
  version "1.0.0-beta.4"
  sha256 "4e0505dde1863d4bdf5306976e7ec319d69cc5338506d590116157832870b187"

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
