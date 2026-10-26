cask "bosun-app" do
  version "2.2.10"
  sha256 "4841281c8ed24815a1237a6052a248841d90103dba1a8174db78c426e9970b2d"

  url "https://github.com/yetidevworks/bosun/releases/download/v#{version}/Bosun-#{version}.dmg"
  name "Bosun"
  desc "Terminal workspace for tmux-native AI agent sessions"
  homepage "https://github.com/yetidevworks/bosun"

  depends_on arch: :arm64
  depends_on formula: "yetidevworks/bosun/bosun"
  depends_on macos: :sequoia

  app "Bosun.app"

  zap trash: [
    "~/Library/Application Support/dev.yetidevworks.bosun-mac",
    "~/Library/Caches/dev.yetidevworks.bosun-mac",
    "~/Library/Preferences/dev.yetidevworks.bosun-mac.plist",
    "~/Library/Saved Application State/dev.yetidevworks.bosun-mac.savedState",
  ]
end
