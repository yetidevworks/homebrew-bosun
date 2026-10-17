cask "bosun-app" do
  version "2.2.4"
  sha256 "04e39e2d5753796d8c1c65800e885909eacad97bfc5c7bf7f5003628139c3d3c"

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
