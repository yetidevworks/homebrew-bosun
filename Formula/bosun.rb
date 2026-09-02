class Bosun < Formula
  desc "Tmux-native orchestrator for AI agent sessions"
  homepage "https://github.com/yetidevworks/bosun"
  license "MIT"
  version "2.1.12"

  depends_on "tmux"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/bosun/releases/download/v2.1.12/bosun-darwin-aarch64.tar.gz"
      sha256 "f9c2834c3122bbb6c3480e456f6f49e04baab6a509feeda8463a3cfe6bda6ca4"
    else
      url "https://github.com/yetidevworks/bosun/releases/download/v2.1.12/bosun-darwin-x86_64.tar.gz"
      sha256 "61412b9ef9cf3aa6cb57e4dbcdee9c88f4428d5d6dfae8aaf0c698bf6e3d6496"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/bosun/releases/download/v2.1.12/bosun-linux-aarch64.tar.gz"
      sha256 "c1fbea4834102c9ae2e0193bfa5997c59509ef1971e2f711e895d2245449cd6b"
    else
      url "https://github.com/yetidevworks/bosun/releases/download/v2.1.12/bosun-linux-x86_64.tar.gz"
      sha256 "e89ba8c0dd602958febece1696c29d82a7a5b408aba11c4262e5908d132dc122"
    end
  end

  def install
    bin.install "bosun"
  end

  test do
    assert_match "bosun", shell_output("#{bin}/bosun --version")
  end
end
