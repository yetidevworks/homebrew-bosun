class Bosun < Formula
  desc "Tmux-native orchestrator for AI agent sessions"
  homepage "https://github.com/yetidevworks/bosun"
  license "MIT"
  version "2.2.8"

  depends_on "tmux"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/bosun/releases/download/v2.2.8/bosun-darwin-aarch64.tar.gz"
      sha256 "d3c90007cb500ea2d06e7b36b2d36abb1e22cff8da8df84f96ceb48099f2c28d"
    else
      url "https://github.com/yetidevworks/bosun/releases/download/v2.2.8/bosun-darwin-x86_64.tar.gz"
      sha256 "bc97f92a263a75ff56a4fc8571c919e3754e3f91244ae1a5a9f0a0d7464d3ed8"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/bosun/releases/download/v2.2.8/bosun-linux-aarch64.tar.gz"
      sha256 "32e0719e71583e632bd85987211e42a0785cee950ff8dc72013cfec263622af7"
    else
      url "https://github.com/yetidevworks/bosun/releases/download/v2.2.8/bosun-linux-x86_64.tar.gz"
      sha256 "7acdc1b3304198a25ff08ae153db8d771dbc7e8f1374fcfc0cad5ad6c5504cd8"
    end
  end

  def install
    bin.install "bosun"
  end

  test do
    assert_match "bosun", shell_output("#{bin}/bosun --version")
  end
end
