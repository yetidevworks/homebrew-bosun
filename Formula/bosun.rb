class Bosun < Formula
  desc "Tmux-native orchestrator for AI agent sessions"
  homepage "https://github.com/yetidevworks/bosun"
  license "MIT"
  version "2.2.4"

  depends_on "tmux"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/bosun/releases/download/v2.2.4/bosun-darwin-aarch64.tar.gz"
      sha256 "c84305940880ed508b4e79d868283fe58c0fef29c597b44a958dd66ba0eed082"
    else
      url "https://github.com/yetidevworks/bosun/releases/download/v2.2.4/bosun-darwin-x86_64.tar.gz"
      sha256 "913f95ff9cfe86137fdf407040cb96c05d47f260a9e539aeb73af5ebad0eb787"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/bosun/releases/download/v2.2.4/bosun-linux-aarch64.tar.gz"
      sha256 "b6d18e8a042a9c7738ef9d13f5e4dd292684bb70f1d6f24a443598476171ff09"
    else
      url "https://github.com/yetidevworks/bosun/releases/download/v2.2.4/bosun-linux-x86_64.tar.gz"
      sha256 "cb2aa2beb6d1c57d0a1c7fa8f8f77b2c3300ee26d3a525726e887a839f15e4cc"
    end
  end

  def install
    bin.install "bosun"
  end

  test do
    assert_match "bosun", shell_output("#{bin}/bosun --version")
  end
end
