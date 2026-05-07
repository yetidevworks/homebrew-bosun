class Bosun < Formula
  desc "Tmux-native orchestrator for AI agent sessions"
  homepage "https://github.com/yetidevworks/bosun"
  license "MIT"
  version "0.2.12"

  on_macos do
    on_arm do
      url "https://github.com/yetidevworks/bosun/releases/download/v0.2.12/bosun-darwin-aarch64.tar.gz"
      sha256 "d26325c1806d6d7cdc78b6c6fdb34c3a496660306e3bf3fe41897fbb49dfe66f"
    end
    on_intel do
      url "https://github.com/yetidevworks/bosun/releases/download/v0.2.12/bosun-darwin-x86_64.tar.gz"
      sha256 "cead233beaabf41a16b3c4fbfc0ac5df05bcfcc88b7c49fd2fd3be59f0a113fa"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/yetidevworks/bosun/releases/download/v0.2.12/bosun-linux-x86_64.tar.gz"
      sha256 "9f5734e0f205b2489f2f6ddbb84515f9a888030fc1cd63f565a9060f14fc4e6a"
    end
    on_arm do
      url "https://github.com/yetidevworks/bosun/releases/download/v0.2.12/bosun-linux-aarch64.tar.gz"
      sha256 "d7a76584ef598bbd9d02558eb01dbc1cf6e272bcd36b07c82ef509610bd1b83e"
    end
  end

  def install
    bin.install "bosun"
  end

  test do
    assert_match "bosun", shell_output("#{bin}/bosun --version")
  end
end
