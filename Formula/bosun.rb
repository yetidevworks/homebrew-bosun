class Bosun < Formula
  desc "Tmux-native orchestrator for AI agent sessions"
  homepage "https://github.com/yetidevworks/bosun"
  license "MIT"
  version "2.0.15"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/bosun/releases/download/v2.0.15/bosun-darwin-aarch64.tar.gz"
      sha256 "b611af0c302e5017ca3ecfaa9853e639564fa7de257a0b6285c0c0e739e7f26a"
    else
      url "https://github.com/yetidevworks/bosun/releases/download/v2.0.15/bosun-darwin-x86_64.tar.gz"
      sha256 "3a12b3ea5490348c715a8180e1ced78cde9f1f2e606d20167412315c699f09a5"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/bosun/releases/download/v2.0.15/bosun-linux-aarch64.tar.gz"
      sha256 "786f12c4c9cb8b82329c92aeaf1154577de8268b7367e5467b7b0fae9bbffbce"
    else
      url "https://github.com/yetidevworks/bosun/releases/download/v2.0.15/bosun-linux-x86_64.tar.gz"
      sha256 "55363b1af95370bdeeef0eea594d8b3ebc5338a9e3ceb282bee14ef1907a11c8"
    end
  end

  def install
    bin.install "bosun"
  end

  test do
    assert_match "bosun", shell_output("#{bin}/bosun --version")
  end
end
