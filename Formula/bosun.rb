class Bosun < Formula
  desc "Tmux-native orchestrator for AI agent sessions"
  homepage "https://github.com/yetidevworks/bosun"
  license "MIT"
  version "2.1.8"

  depends_on "tmux"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/bosun/releases/download/v2.1.8/bosun-darwin-aarch64.tar.gz"
      sha256 "a8ad3e5014dfbf7162252eae8bf400e32a0f04fae8be5df7adf4f1581167088b"
    else
      url "https://github.com/yetidevworks/bosun/releases/download/v2.1.8/bosun-darwin-x86_64.tar.gz"
      sha256 "80d085f9b60a6eee007616140a330207dd9c1742e0be69f049cff8696c7d4c3d"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/bosun/releases/download/v2.1.8/bosun-linux-aarch64.tar.gz"
      sha256 "7cda622fbdb6d9d04ba66adc7352638122b05e5cd722787c99632856b21a94e7"
    else
      url "https://github.com/yetidevworks/bosun/releases/download/v2.1.8/bosun-linux-x86_64.tar.gz"
      sha256 "513947630d86f507b5fd4cd4271ffb2d711b9720420446ae8cf13c3ae057e720"
    end
  end

  def install
    bin.install "bosun"
  end

  test do
    assert_match "bosun", shell_output("#{bin}/bosun --version")
  end
end
