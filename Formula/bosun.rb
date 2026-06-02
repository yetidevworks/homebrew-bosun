class Bosun < Formula
  desc "Tmux-native orchestrator for AI agent sessions"
  homepage "https://github.com/yetidevworks/bosun"
  license "MIT"
  version "2.0.7"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/bosun/releases/download/v2.0.7/bosun-darwin-aarch64.tar.gz"
      sha256 "dea46eb63ffb1cceb013d0ca7a01ff3a305dba9493a67e0dab87f36d0cbf1b3e"
    else
      url "https://github.com/yetidevworks/bosun/releases/download/v2.0.7/bosun-darwin-x86_64.tar.gz"
      sha256 "9a2db34d54aa03c771e32d9d58bdeea80abe876c09755c366b8ef7130a548c17"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/bosun/releases/download/v2.0.7/bosun-linux-aarch64.tar.gz"
      sha256 "795d27fcbb3b771316c8e136705ea405be084880b7b1a7b29462a34f166b5810"
    else
      url "https://github.com/yetidevworks/bosun/releases/download/v2.0.7/bosun-linux-x86_64.tar.gz"
      sha256 "55222204e046d15a5b4cada26d17e1bc1c90a49021f386d2c958763c85919362"
    end
  end

  def install
    bin.install "bosun"
  end

  test do
    assert_match "bosun", shell_output("#{bin}/bosun --version")
  end
end
