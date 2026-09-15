cask "aerospacebar" do
  version "1.0.1"
  sha256 "e9eba18e5eed4b1d4be55ca22cbe52d3b4b2a264ad84be1e2b7d60847475a7db"

  url "https://github.com/rdrkr/AeroSpaceBar/releases/download/v#{version}/AeroSpaceBar-v#{version}.zip"
  name "AeroSpaceBar"
  desc "Modern menu bar application for managing AeroSpace window manager"
  homepage "https://github.com/rdrkr/AeroSpaceBar"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sequoia

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
