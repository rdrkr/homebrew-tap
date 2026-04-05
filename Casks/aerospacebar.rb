cask "aerospacebar" do
  version "1.0.0-beta.12"
  sha256 "ce68c7ed6d6813717f238ff23c68a7d8bfe07f65fd3a14926706c65f26177eb8"

  url "https://github.com/rdrkr/AeroSpaceBar/releases/download/v#{version}/AeroSpaceBar-v#{version}.zip"
  name "AeroSpaceBar"
  desc "Modern macOS menu bar application for managing AeroSpace window manager"
  homepage "https://github.com/rdrkr/AeroSpaceBar"

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
