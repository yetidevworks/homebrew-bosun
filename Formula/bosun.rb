class Bosun < Formula
  desc "Tmux-native orchestrator for AI agent sessions"
  homepage "https://github.com/yetidevworks/bosun"
  license "MIT"
  version "2.0.5"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/bosun/releases/download/v2.0.5/bosun-darwin-aarch64.tar.gz"
      sha256 "f35b85f8af8cc9b2943d50c38ef9634cbc42e3dc2b60815d3b460f7fb6dca347"
    else
      url "https://github.com/yetidevworks/bosun/releases/download/v2.0.5/bosun-darwin-x86_64.tar.gz"
      sha256 "d09cce91610e495dd94f4de2f3ca77e5e4716484be30f8f26ef01e7f682d31af"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/bosun/releases/download/v2.0.5/bosun-linux-aarch64.tar.gz"
      sha256 "bdb7ddce4880bbef4152f9dad0ff1ae84c34e5a6507586c78edbbaab07613c6a"
    else
      url "https://github.com/yetidevworks/bosun/releases/download/v2.0.5/bosun-linux-x86_64.tar.gz"
      sha256 "29f7e5c8043fa7c69c578b5f649be9bb8d5230b1fba4ff14d99a1758f34af6fd"
    end
  end

  def install
    bin.install "bosun"
  end

  test do
    assert_match "bosun", shell_output("#{bin}/bosun --version")
  end
end
