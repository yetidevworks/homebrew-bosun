class Bosun < Formula
  desc "Tmux-native orchestrator for AI agent sessions"
  homepage "https://github.com/yetidevworks/bosun"
  license "MIT"
  version "2.1.13"

  depends_on "tmux"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/bosun/releases/download/v2.1.13/bosun-darwin-aarch64.tar.gz"
      sha256 "4fd6ce31226d3bdb42945f5f8e29f2728a5936e74ee39a2d2a3bf85d7ba06283"
    else
      url "https://github.com/yetidevworks/bosun/releases/download/v2.1.13/bosun-darwin-x86_64.tar.gz"
      sha256 "d2915a0907c1dad72a86656e2abe78452ada6caa6b63f438a23a37a23b134eb3"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/bosun/releases/download/v2.1.13/bosun-linux-aarch64.tar.gz"
      sha256 "9bfc75440a9337ba07d641450fb8318f9d48b2574cacbb81837ad6ee28739c73"
    else
      url "https://github.com/yetidevworks/bosun/releases/download/v2.1.13/bosun-linux-x86_64.tar.gz"
      sha256 "3a4d13df165eeb06e6bbd1ddd5dfe935ea26f0850d2ddf25b416b12d21879d60"
    end
  end

  def install
    bin.install "bosun"
  end

  test do
    assert_match "bosun", shell_output("#{bin}/bosun --version")
  end
end
