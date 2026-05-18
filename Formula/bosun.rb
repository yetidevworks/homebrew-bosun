class Bosun < Formula
  desc "Tmux-native orchestrator for AI agent sessions"
  homepage "https://github.com/yetidevworks/bosun"
  license "MIT"
  version "0.3.3"

  on_macos do
    on_arm do
      url "https://github.com/yetidevworks/bosun/releases/download/v0.3.3/bosun-darwin-aarch64.tar.gz"
      sha256 "eaedc98e6e4afce3533cc7dfa95d8bd3f63e084695c1a059921fd277a5632ced"
    end
    on_intel do
      url "https://github.com/yetidevworks/bosun/releases/download/v0.3.3/bosun-darwin-x86_64.tar.gz"
      sha256 "013e10e1b76ad9a814e3056bd9295be95cc05d99ef45247f16af9d70ba97900a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/yetidevworks/bosun/releases/download/v0.3.3/bosun-linux-x86_64.tar.gz"
      sha256 "903238caf93c2e99a963f32a8dd8d23e5a30ae9a6229fdb0bc5aa82736d38926"
    end
    on_arm do
      url "https://github.com/yetidevworks/bosun/releases/download/v0.3.3/bosun-linux-aarch64.tar.gz"
      sha256 "4987e15cfe57eecbcf5e8ea3a77a0b4b0bdc2d478a8b0b26b97ad5cde1b1574f"
    end
  end

  def install
    bin.install "bosun"
  end

  test do
    assert_match "bosun", shell_output("#{bin}/bosun --version")
  end
end
