class Bosun < Formula
  desc "Tmux-native orchestrator for AI agent sessions"
  homepage "https://github.com/yetidevworks/bosun"
  license "MIT"
  version "2.2.1"

  depends_on "tmux"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/bosun/releases/download/v2.2.1/bosun-darwin-aarch64.tar.gz"
      sha256 "a71d9a410a7b2737acfbb203d150a4d3a77eac477bb1cce68b39d08f38899db1"
    else
      url "https://github.com/yetidevworks/bosun/releases/download/v2.2.1/bosun-darwin-x86_64.tar.gz"
      sha256 "2ef661aff5f0b1f1206154fb27cda04198904207942dd45dc15924c10d107973"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/bosun/releases/download/v2.2.1/bosun-linux-aarch64.tar.gz"
      sha256 "33ce83fa1fa753a1a1b063b19837db38e88e714d83be179c1068a61316401d35"
    else
      url "https://github.com/yetidevworks/bosun/releases/download/v2.2.1/bosun-linux-x86_64.tar.gz"
      sha256 "00eb088a7b9dfe28991669c1c52bc6b58b25f71be472330c69ad156f2466ad74"
    end
  end

  def install
    bin.install "bosun"
  end

  test do
    assert_match "bosun", shell_output("#{bin}/bosun --version")
  end
end
