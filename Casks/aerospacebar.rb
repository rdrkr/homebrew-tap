cask "aerospacebar" do
  version "1.0.0-beta.10"
  sha256 "e3a192f3d0119c517b099db408e04e96a4929ac8f0a0ce9c2642bdb8aed6b979"

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
