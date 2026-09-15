cask "aerospacebar" do
  version "1.0.2"
  sha256 "51ab0f08f32d9435f8a1814751ff8c20d698bbec0009c3bdcf3a33530a7b7efd"

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
