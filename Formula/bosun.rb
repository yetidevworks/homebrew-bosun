class Bosun < Formula
  desc "Tmux-native orchestrator for AI agent sessions"
  homepage "https://github.com/yetidevworks/bosun"
  license "MIT"
  version "2.2.11"

  depends_on "tmux"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/bosun/releases/download/v2.2.11/bosun-darwin-aarch64.tar.gz"
      sha256 "3e6871673c69783ce9e30ba4c315e6407267077fa99e5e0bc82a13b2ac070707"
    else
      url "https://github.com/yetidevworks/bosun/releases/download/v2.2.11/bosun-darwin-x86_64.tar.gz"
      sha256 "b4b5296e7f0b940f529e753ce68d113f9e01e4c211c32112a3e59f85740ca8b4"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/bosun/releases/download/v2.2.11/bosun-linux-aarch64.tar.gz"
      sha256 "119438ceb76d0fd937d5b0487d5a242f9bc110d6c83c0b05a13db24857c08096"
    else
      url "https://github.com/yetidevworks/bosun/releases/download/v2.2.11/bosun-linux-x86_64.tar.gz"
      sha256 "2a3e812df93a8ac392569a956e0ab291273f7a5f31a8255a2586af1f6845d6fe"
    end
  end

  def install
    bin.install "bosun"
  end

  test do
    assert_match "bosun", shell_output("#{bin}/bosun --version")
  end
end
