class Bosun < Formula
  desc "Tmux-native orchestrator for AI agent sessions"
  homepage "https://github.com/yetidevworks/bosun"
  license "MIT"
  version "2.0.6"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/bosun/releases/download/v2.0.6/bosun-darwin-aarch64.tar.gz"
      sha256 "c98e652d9ef07e90bc37f42957622fd02061ae3297f47df9ccb7e5138df7aa6a"
    else
      url "https://github.com/yetidevworks/bosun/releases/download/v2.0.6/bosun-darwin-x86_64.tar.gz"
      sha256 "70b515ea14f1a45160a53776647852a2da24bfe4b52b7f567b4b14f6185fbeca"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/bosun/releases/download/v2.0.6/bosun-linux-aarch64.tar.gz"
      sha256 "56cbc5e4cb7e7ce22d593593f28ad646221412adeb64404b851cadeef7e759b5"
    else
      url "https://github.com/yetidevworks/bosun/releases/download/v2.0.6/bosun-linux-x86_64.tar.gz"
      sha256 "cfc1f812670b914d2b9655aad7c3a211ed5aceb86779b4db1b251a6180f95430"
    end
  end

  def install
    bin.install "bosun"
  end

  test do
    assert_match "bosun", shell_output("#{bin}/bosun --version")
  end
end
