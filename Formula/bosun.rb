class Bosun < Formula
  desc "Tmux-native orchestrator for AI agent sessions"
  homepage "https://github.com/yetidevworks/bosun"
  license "MIT"
  version "2.2.7"

  depends_on "tmux"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/bosun/releases/download/v2.2.7/bosun-darwin-aarch64.tar.gz"
      sha256 "787f7741124892968f5bd5413e29cc9f878029ccf2f583a6c644a6202118ee0b"
    else
      url "https://github.com/yetidevworks/bosun/releases/download/v2.2.7/bosun-darwin-x86_64.tar.gz"
      sha256 "fd77e85f71693a0fa4f763eb463887669e5a93fb3112ee024e9b6908f60f89f4"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/bosun/releases/download/v2.2.7/bosun-linux-aarch64.tar.gz"
      sha256 "9a9f99232f9f772c7557e3dc0da35275cc5094994053848a5e26686da7d18d68"
    else
      url "https://github.com/yetidevworks/bosun/releases/download/v2.2.7/bosun-linux-x86_64.tar.gz"
      sha256 "8f7276582d5471ee46b433f459807b017fb9150008e52b976a4df68e3b9638fa"
    end
  end

  def install
    bin.install "bosun"
  end

  test do
    assert_match "bosun", shell_output("#{bin}/bosun --version")
  end
end
