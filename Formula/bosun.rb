class Bosun < Formula
  desc "Tmux-native orchestrator for AI agent sessions"
  homepage "https://github.com/yetidevworks/bosun"
  license "MIT"
  version "2.0.4"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/bosun/releases/download/v2.0.4/bosun-darwin-aarch64.tar.gz"
      sha256 "b10cb20c49709a55b971dc1675c3ad342777b0a2c5415346a2a0a3a07451a694"
    else
      url "https://github.com/yetidevworks/bosun/releases/download/v2.0.4/bosun-darwin-x86_64.tar.gz"
      sha256 "731a82647b203697128a41b0e213fe110e273ed0cb27633d16e03094ddacffd9"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/bosun/releases/download/v2.0.4/bosun-linux-aarch64.tar.gz"
      sha256 "fdef63aab443130d89f0731bcfd30dafa1f1c566761b7bb26990a90e5ea221db"
    else
      url "https://github.com/yetidevworks/bosun/releases/download/v2.0.4/bosun-linux-x86_64.tar.gz"
      sha256 "3903a7d3d5188ed2fa267e8bd5b554ef843f120f3e002ec9cee987a5466abb02"
    end
  end

  def install
    bin.install "bosun"
  end

  test do
    assert_match "bosun", shell_output("#{bin}/bosun --version")
  end
end
