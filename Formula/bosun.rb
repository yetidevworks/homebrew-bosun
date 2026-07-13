class Bosun < Formula
  desc "Tmux-native orchestrator for AI agent sessions"
  homepage "https://github.com/yetidevworks/bosun"
  license "MIT"
  version "2.0.14"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/bosun/releases/download/v2.0.14/bosun-darwin-aarch64.tar.gz"
      sha256 "7d8774ba4b781c28e0bce6f2cd0b7a88ea849475509c95982721695f59a5c068"
    else
      url "https://github.com/yetidevworks/bosun/releases/download/v2.0.14/bosun-darwin-x86_64.tar.gz"
      sha256 "e38b99cb025e3c39e5b7b193d328a616fba7ddf6f2090d8eda4365fdda8ba4e1"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/bosun/releases/download/v2.0.14/bosun-linux-aarch64.tar.gz"
      sha256 "1b9a4db2ffffe4b8b2364fab1b1375b3745f30a23424d4731edf8cdfe3b9ca2d"
    else
      url "https://github.com/yetidevworks/bosun/releases/download/v2.0.14/bosun-linux-x86_64.tar.gz"
      sha256 "fc074263e570d2fe67bcc3172c398660f33b835b1f95892f6710e0c5979494b1"
    end
  end

  def install
    bin.install "bosun"
  end

  test do
    assert_match "bosun", shell_output("#{bin}/bosun --version")
  end
end
