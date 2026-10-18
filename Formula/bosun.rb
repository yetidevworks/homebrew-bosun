class Bosun < Formula
  desc "Tmux-native orchestrator for AI agent sessions"
  homepage "https://github.com/yetidevworks/bosun"
  license "MIT"
  version "2.2.5"

  depends_on "tmux"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/bosun/releases/download/v2.2.5/bosun-darwin-aarch64.tar.gz"
      sha256 "28d7e44d755bb9678f9b46355946faa5ee8372771b4f18c236a0c8147b25a401"
    else
      url "https://github.com/yetidevworks/bosun/releases/download/v2.2.5/bosun-darwin-x86_64.tar.gz"
      sha256 "a3940f7fe4c627dc25255d5fd02f494fea572b4f78ef2d259af19b47357cbdea"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/bosun/releases/download/v2.2.5/bosun-linux-aarch64.tar.gz"
      sha256 "b5cfce1d65ecfa16f4df8816401cc3d8564975b5cedf68f495ca43a7ef47dff3"
    else
      url "https://github.com/yetidevworks/bosun/releases/download/v2.2.5/bosun-linux-x86_64.tar.gz"
      sha256 "f880e95f9e6fc7a43ffb912a1c0c1ba59466d3228d73d2bc6014eb296c32f87e"
    end
  end

  def install
    bin.install "bosun"
  end

  test do
    assert_match "bosun", shell_output("#{bin}/bosun --version")
  end
end
