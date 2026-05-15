class Bosun < Formula
  desc "Tmux-native orchestrator for AI agent sessions"
  homepage "https://github.com/yetidevworks/bosun"
  license "MIT"
  version "0.3.0"

  on_macos do
    on_arm do
      url "https://github.com/yetidevworks/bosun/releases/download/v0.3.0/bosun-darwin-aarch64.tar.gz"
      sha256 "60aa244d7c01030461dc9fc4a997238863b238c93ad2261e33eb4d9ac6a511fb"
    end
    on_intel do
      url "https://github.com/yetidevworks/bosun/releases/download/v0.3.0/bosun-darwin-x86_64.tar.gz"
      sha256 "c280b340b6dd4c8accdcc78c3ddd47dea8d66b71bd8b4ba0b47d4d10f494244e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/yetidevworks/bosun/releases/download/v0.3.0/bosun-linux-x86_64.tar.gz"
      sha256 "bbe8757de5ce48a6d80011df58002e88f4b3fb875eb19c39e633057d7ff9ed72"
    end
    on_arm do
      url "https://github.com/yetidevworks/bosun/releases/download/v0.3.0/bosun-linux-aarch64.tar.gz"
      sha256 "6035573987926170890fada83bca459bc55464f545b35b016b41c86b4758d584"
    end
  end

  def install
    bin.install "bosun"
  end

  test do
    assert_match "bosun", shell_output("#{bin}/bosun --version")
  end
end
