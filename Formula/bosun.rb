class Bosun < Formula
  desc "Tmux-native orchestrator for AI agent sessions"
  homepage "https://github.com/yetidevworks/bosun"
  license "MIT"
  version "0.2.5"

  on_macos do
    on_arm do
      url "https://github.com/yetidevworks/bosun/releases/download/v0.2.5/bosun-darwin-aarch64.tar.gz"
      sha256 "70b3a344d7c8ef1338cb4f67606d77ece0eaa37e073361dc637bc61bd8cf4b98"
    end
    on_intel do
      url "https://github.com/yetidevworks/bosun/releases/download/v0.2.5/bosun-darwin-x86_64.tar.gz"
      sha256 "338088e13189613d0940163c88632c69908c069ffee45615f3e09b7d4890a8e8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/yetidevworks/bosun/releases/download/v0.2.5/bosun-linux-x86_64.tar.gz"
      sha256 "546585203ec4cca977f5aac0ff825419726d691e98e3b424d603457f019172a4"
    end
    on_arm do
      url "https://github.com/yetidevworks/bosun/releases/download/v0.2.5/bosun-linux-aarch64.tar.gz"
      sha256 "6584021c5d07452f667c5edcd7b4077b8935a10801d18e65ad0d27e26b3a96e1"
    end
  end

  def install
    bin.install "bosun"
  end

  test do
    assert_match "bosun", shell_output("#{bin}/bosun --version")
  end
end
