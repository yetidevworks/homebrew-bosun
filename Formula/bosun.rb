class Bosun < Formula
  desc "Tmux-native orchestrator for AI agent sessions"
  homepage "https://github.com/yetidevworks/bosun"
  license "MIT"
  version "0.3.11"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/bosun/releases/download/v0.3.11/bosun-darwin-aarch64.tar.gz"
      sha256 "b266d33827e83139caa450b82997809c32a33359fdee79e0033e9a4e03c7fb56"
    else
      url "https://github.com/yetidevworks/bosun/releases/download/v0.3.11/bosun-darwin-x86_64.tar.gz"
      sha256 "fa100223a004a3c7e9df7be63f6c530b894ccd9958f47d919cb204edf934c8e2"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/bosun/releases/download/v0.3.11/bosun-linux-aarch64.tar.gz"
      sha256 "36f7991194f81ed6be1ed1ec1c130facf299f70fd48a1add3809177cfe79aec0"
    else
      url "https://github.com/yetidevworks/bosun/releases/download/v0.3.11/bosun-linux-x86_64.tar.gz"
      sha256 "189456d44195f77aa2c87bd068eadd35e7ccc455a543dd090d882e0f5df5521f"
    end
  end

  def install
    bin.install "bosun"
  end

  test do
    assert_match "bosun", shell_output("#{bin}/bosun --version")
  end
end
