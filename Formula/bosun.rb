class Bosun < Formula
  desc "Tmux-native orchestrator for AI agent sessions"
  homepage "https://github.com/yetidevworks/bosun"
  license "MIT"
  version "2.0.8"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/bosun/releases/download/v2.0.8/bosun-darwin-aarch64.tar.gz"
      sha256 "d4b41f644182e7bb2cc4c03d2fa3293887f8c1d9cf0fc789aa3efaa1c90ab453"
    else
      url "https://github.com/yetidevworks/bosun/releases/download/v2.0.8/bosun-darwin-x86_64.tar.gz"
      sha256 "9922c87fb438b8b6ab09c9424a0554152cb2580915a8c62c0795909a7f455629"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/bosun/releases/download/v2.0.8/bosun-linux-aarch64.tar.gz"
      sha256 "0b39e19cb7958f226d601e9b0b78930d5506776549f559476845f730684b4483"
    else
      url "https://github.com/yetidevworks/bosun/releases/download/v2.0.8/bosun-linux-x86_64.tar.gz"
      sha256 "e32fb90da6be6df78c90221c2dc5c790ec2a295dbffb36d46ab578b345c8ad6a"
    end
  end

  def install
    bin.install "bosun"
  end

  test do
    assert_match "bosun", shell_output("#{bin}/bosun --version")
  end
end
