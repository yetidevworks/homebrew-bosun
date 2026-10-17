class Bosun < Formula
  desc "Tmux-native orchestrator for AI agent sessions"
  homepage "https://github.com/yetidevworks/bosun"
  license "MIT"
  version "2.2.3"

  depends_on "tmux"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/bosun/releases/download/v2.2.3/bosun-darwin-aarch64.tar.gz"
      sha256 "4842202dde706452a0ecbcaf5ee5a0b249767c25fc9019cb7f29243e428e69d7"
    else
      url "https://github.com/yetidevworks/bosun/releases/download/v2.2.3/bosun-darwin-x86_64.tar.gz"
      sha256 "ab8854d72aecda0c27a42a9efa0336a12044ee4f2566e127651b27f2e7811d6f"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/bosun/releases/download/v2.2.3/bosun-linux-aarch64.tar.gz"
      sha256 "6d7d94d4b4d79ca1fdf5a43c3d1a2929b49a424a773833ec4be0e1cadef509f4"
    else
      url "https://github.com/yetidevworks/bosun/releases/download/v2.2.3/bosun-linux-x86_64.tar.gz"
      sha256 "219b2f55e9454026e2a1566848b322d10c271325dcbd68c448eb96f73e675cb2"
    end
  end

  def install
    bin.install "bosun"
  end

  test do
    assert_match "bosun", shell_output("#{bin}/bosun --version")
  end
end
