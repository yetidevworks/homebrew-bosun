class Bosun < Formula
  desc "Tmux-native orchestrator for AI agent sessions"
  homepage "https://github.com/yetidevworks/bosun"
  license "MIT"
  version "2.1.15"

  depends_on "tmux"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/bosun/releases/download/v2.1.15/bosun-darwin-aarch64.tar.gz"
      sha256 "0d43737eb07406112a06be565428cbef2e86ee2281fab5de264efc6622ad0c99"
    else
      url "https://github.com/yetidevworks/bosun/releases/download/v2.1.15/bosun-darwin-x86_64.tar.gz"
      sha256 "b6aed9940ff16f2d24026a5390a45070055a415826b6fc18d3f402aaddf53843"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/bosun/releases/download/v2.1.15/bosun-linux-aarch64.tar.gz"
      sha256 "0a6de69fc753a188bf55235ba20be67caaab73409816336d7415f096ebb033c5"
    else
      url "https://github.com/yetidevworks/bosun/releases/download/v2.1.15/bosun-linux-x86_64.tar.gz"
      sha256 "73f35ef297a7fd9eb5dbfc0fe32037531ffaa7f1c412eb172f452dd059105378"
    end
  end

  def install
    bin.install "bosun"
  end

  test do
    assert_match "bosun", shell_output("#{bin}/bosun --version")
  end
end
