cask "aerospacebar" do
  version "1.0.3"
  sha256 "4c33b9f1d97412db85798be69966e6293e92f36f1b03198b461c24b47ae046d6"

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
