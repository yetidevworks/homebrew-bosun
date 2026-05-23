class Bosun < Formula
  desc "Tmux-native orchestrator for AI agent sessions"
  homepage "https://github.com/yetidevworks/bosun"
  license "MIT"
  version "0.3.9"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/bosun/releases/download/v0.3.9/bosun-darwin-aarch64.tar.gz"
      sha256 "07e1cf33dc878fc33ee269e3db1a3fabc1cd1d3d943ebe26f67a576611ede2de"
    else
      url "https://github.com/yetidevworks/bosun/releases/download/v0.3.9/bosun-darwin-x86_64.tar.gz"
      sha256 "c6c3b1b8210c005c51a73524066ae7e5effcd862dc5005a68bb78679e35f5ee7"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/bosun/releases/download/v0.3.9/bosun-linux-aarch64.tar.gz"
      sha256 "f69784cd0e2ae6c7d1779edca2368b29a474e0f6da47c75f84336fd9b64d9a46"
    else
      url "https://github.com/yetidevworks/bosun/releases/download/v0.3.9/bosun-linux-x86_64.tar.gz"
      sha256 "c239ac732c857e49fcda8c2e5c40bde6da665cfe7328d5bf43c3e2bd7040cb2c"
    end
  end

  def install
    bin.install "bosun"
  end

  test do
    assert_match "bosun", shell_output("#{bin}/bosun --version")
  end
end
