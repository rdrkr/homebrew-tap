cask "aerospacebar" do
  version "1.0.0-beta.13"
  sha256 "3bcd14daa7aa4cfb735415ae844cb9950a1f4619b6ed4fe25b7357abd1e190e9"

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

  postflight do
    system "xattr", "-dr", "com.apple.quarantine", "#{appdir}/AeroSpaceBar.app"
  end

  zap trash: [
    "~/Library/Application Support/com.rdrkr.AeroSpaceBar",
    "~/Library/Caches/com.rdrkr.AeroSpaceBar",
    "~/Library/Preferences/com.rdrkr.AeroSpaceBar.plist",
  ]
end
