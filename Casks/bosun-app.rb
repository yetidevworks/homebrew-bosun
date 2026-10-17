cask "bosun-app" do
  version "2.2.1"
  sha256 "cc428fa7c2ea78a0a9f507b85f16f7a3bf06bf7270a809b5e472ba0b0c3112f4"

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
