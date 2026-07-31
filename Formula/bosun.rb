class Bosun < Formula
  desc "Tmux-native orchestrator for AI agent sessions"
  homepage "https://github.com/yetidevworks/bosun"
  license "MIT"
  version "2.0.16"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/bosun/releases/download/v2.0.16/bosun-darwin-aarch64.tar.gz"
      sha256 "6b294d4db276ee5e420ad9ba49e340672455e20a5ee9e987ca099e52fb36c5bb"
    else
      url "https://github.com/yetidevworks/bosun/releases/download/v2.0.16/bosun-darwin-x86_64.tar.gz"
      sha256 "8d9978496c016919806f630d1261e7cf093e78753d877b86f667bce8ba9f514b"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/bosun/releases/download/v2.0.16/bosun-linux-aarch64.tar.gz"
      sha256 "a168f79dc678100aed1846556d8ff7a91e172286fc62c0931dad89233d4f7e08"
    else
      url "https://github.com/yetidevworks/bosun/releases/download/v2.0.16/bosun-linux-x86_64.tar.gz"
      sha256 "64824e2d8f9508f096174d1d302798abe3daef87e9f356963e68a1a3924a0150"
    end
  end

  def install
    bin.install "bosun"
  end

  test do
    assert_match "bosun", shell_output("#{bin}/bosun --version")
  end
end
