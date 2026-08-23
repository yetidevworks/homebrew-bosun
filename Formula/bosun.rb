class Bosun < Formula
  desc "Tmux-native orchestrator for AI agent sessions"
  homepage "https://github.com/yetidevworks/bosun"
  license "MIT"
  version "2.1.9"

  depends_on "tmux"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/bosun/releases/download/v2.1.9/bosun-darwin-aarch64.tar.gz"
      sha256 "9844633ce0645630fa62ebf74229b7afd141c0491827512808a10da445f09107"
    else
      url "https://github.com/yetidevworks/bosun/releases/download/v2.1.9/bosun-darwin-x86_64.tar.gz"
      sha256 "cfcb0bb2c69241fa9cbc2f0a616092b2c70f54bf312547ea7080006164aefa90"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/bosun/releases/download/v2.1.9/bosun-linux-aarch64.tar.gz"
      sha256 "9962107004c97a356f85f9bdff89ba56ca5e99356729f908b80dc8e7c6d82184"
    else
      url "https://github.com/yetidevworks/bosun/releases/download/v2.1.9/bosun-linux-x86_64.tar.gz"
      sha256 "d20870ff0855d7f2999c4e22e540663157b71564e7d5218542dcc062212e087e"
    end
  end

  def install
    bin.install "bosun"
  end

  test do
    assert_match "bosun", shell_output("#{bin}/bosun --version")
  end
end
