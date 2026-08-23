class Bosun < Formula
  desc "Tmux-native orchestrator for AI agent sessions"
  homepage "https://github.com/yetidevworks/bosun"
  license "MIT"
  version "2.1.10"

  depends_on "tmux"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/bosun/releases/download/v2.1.10/bosun-darwin-aarch64.tar.gz"
      sha256 "20be9a8cc8ceded0944f8eceb170aca269d1793a5e4567fcf07514fbabc08252"
    else
      url "https://github.com/yetidevworks/bosun/releases/download/v2.1.10/bosun-darwin-x86_64.tar.gz"
      sha256 "ed245b0d6788959a3c86b87c08e146963f772c2fea4b7e861085f85a6cba1c87"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/bosun/releases/download/v2.1.10/bosun-linux-aarch64.tar.gz"
      sha256 "1001cacd0bb4cdee4006c25ef3d0e52adf3a26d23b57431e50d56fc3a9b62d6f"
    else
      url "https://github.com/yetidevworks/bosun/releases/download/v2.1.10/bosun-linux-x86_64.tar.gz"
      sha256 "40dc59773d21a6173002220c0de0f56793748cbd70c56a65071ade87a09db2e6"
    end
  end

  def install
    bin.install "bosun"
  end

  test do
    assert_match "bosun", shell_output("#{bin}/bosun --version")
  end
end
