class Bosun < Formula
  desc "Tmux-native orchestrator for AI agent sessions"
  homepage "https://github.com/yetidevworks/bosun"
  license "MIT"
  version "0.2.3"

  on_macos do
    on_arm do
      url "https://github.com/yetidevworks/bosun/releases/download/v0.2.3/bosun-darwin-aarch64.tar.gz"
      sha256 "bb1fb4476b2f89af1b3e81e1ec1a3b907ba092d60049295f07d9d03f231f8005"
    end
    on_intel do
      url "https://github.com/yetidevworks/bosun/releases/download/v0.2.3/bosun-darwin-x86_64.tar.gz"
      sha256 "c697587c28fcbe9b7d121e40fa45957d6a9531ffcdda23bc58005a0437800a88"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/yetidevworks/bosun/releases/download/v0.2.3/bosun-linux-x86_64.tar.gz"
      sha256 "89812f103c6c5c17fed4d0ea1b47359465a5c255a89e4ca3f99b0f6dc41a8ec3"
    end
    on_arm do
      url "https://github.com/yetidevworks/bosun/releases/download/v0.2.3/bosun-linux-aarch64.tar.gz"
      sha256 "005b08a90c5dc6eb0dfce09502f16375f4275e148ea02b61b10161d9252ae889"
    end
  end

  def install
    bin.install "bosun"
  end

  test do
    assert_match "bosun", shell_output("#{bin}/bosun --version")
  end
end
