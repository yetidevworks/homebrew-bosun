cask "bosun-app" do
  version "2.2.7"
  sha256 "5fbaf8a55edb9734cf6455792975e04573523df67b2ac0f3ce39b3736f33cb24"

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
