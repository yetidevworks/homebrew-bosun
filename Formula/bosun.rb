class Bosun < Formula
  desc "Tmux-native orchestrator for AI agent sessions"
  homepage "https://github.com/yetidevworks/bosun"
  license "MIT"
  version "0.3.4"

  on_macos do
    on_arm do
      url "https://github.com/yetidevworks/bosun/releases/download/v0.3.4/bosun-darwin-aarch64.tar.gz"
      sha256 "32ce9c10914a7818364a2af45aea63f56f240d5a67cc81e771eb3153cf13fd75"
    end
    on_intel do
      url "https://github.com/yetidevworks/bosun/releases/download/v0.3.4/bosun-darwin-x86_64.tar.gz"
      sha256 "24462e5a5d9ddeea24a3cb94c915f09d02a4346793b627b549eea875f5db6964"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/yetidevworks/bosun/releases/download/v0.3.4/bosun-linux-x86_64.tar.gz"
      sha256 "0fe1b7975fafdacf75ddbb9ee7bcfc1635caad2cf132c384d63fe8ff5dab71bb"
    end
    on_arm do
      url "https://github.com/yetidevworks/bosun/releases/download/v0.3.4/bosun-linux-aarch64.tar.gz"
      sha256 "d3927215d0b0fbe029e4d904c4f3e3553f8a1367611b1f7402315fec89a95df0"
    end
  end

  def install
    bin.install "bosun"
  end

  test do
    assert_match "bosun", shell_output("#{bin}/bosun --version")
  end
end
