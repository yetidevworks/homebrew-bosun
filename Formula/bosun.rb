class Bosun < Formula
  desc "Tmux-native orchestrator for AI agent sessions"
  homepage "https://github.com/yetidevworks/bosun"
  license "MIT"
  version "2.0.17"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/bosun/releases/download/v2.0.17/bosun-darwin-aarch64.tar.gz"
      sha256 "487bcad62917c4d2283b9649bb7d9ebcc3e910bbf004fbf396cf1427cc45d7d8"
    else
      url "https://github.com/yetidevworks/bosun/releases/download/v2.0.17/bosun-darwin-x86_64.tar.gz"
      sha256 "4f2eb40b9baa54d87c3a39f074c7513cba2d72eaab41b555eee8e125f51f9858"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/bosun/releases/download/v2.0.17/bosun-linux-aarch64.tar.gz"
      sha256 "8205d2faec48bf2d475741ccb3665f72748d3a0a2701c426eb1478d3c57c18db"
    else
      url "https://github.com/yetidevworks/bosun/releases/download/v2.0.17/bosun-linux-x86_64.tar.gz"
      sha256 "4623fdc24ee5401074e56b5f0cf3dbbbc3d078aa1f2c469a1ec750b1084d6b21"
    end
  end

  def install
    bin.install "bosun"
  end

  test do
    assert_match "bosun", shell_output("#{bin}/bosun --version")
  end
end
