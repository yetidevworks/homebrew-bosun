class Bosun < Formula
  desc "Tmux-native orchestrator for AI agent sessions"
  homepage "https://github.com/yetidevworks/bosun"
  license "MIT"
  version "0.3.10"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/bosun/releases/download/v0.3.10/bosun-darwin-aarch64.tar.gz"
      sha256 "2e94e39e888d12ac9ea90a55a8bb2ccbf4956dac8f974bdcdaa951f42717fa88"
    else
      url "https://github.com/yetidevworks/bosun/releases/download/v0.3.10/bosun-darwin-x86_64.tar.gz"
      sha256 "8ee676a083c9e86c9f66fe8a3d962ea3eb7a9b705a4799c6f9bea9607d43dd7b"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/bosun/releases/download/v0.3.10/bosun-linux-aarch64.tar.gz"
      sha256 "4e32becae77a742fa2f89edcfb4323a676f1ea58f7512bb45900c2496021ddff"
    else
      url "https://github.com/yetidevworks/bosun/releases/download/v0.3.10/bosun-linux-x86_64.tar.gz"
      sha256 "408d64e8c6374cb832d38ad1b079c044bbec0fbc0bb436a581d71fb9465ef245"
    end
  end

  def install
    bin.install "bosun"
  end

  test do
    assert_match "bosun", shell_output("#{bin}/bosun --version")
  end
end
