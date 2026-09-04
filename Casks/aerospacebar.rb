cask "aerospacebar" do
  version "1.0.0-beta.14"
  sha256 "61203cf9400d0b56e89fbd2286e1889a468a8c83ba124108ba8dabed2abbafcf"

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
