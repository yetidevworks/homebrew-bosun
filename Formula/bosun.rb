class Bosun < Formula
  desc "Tmux-native orchestrator for AI agent sessions"
  homepage "https://github.com/yetidevworks/bosun"
  license "MIT"
  version "0.2.13"

  on_macos do
    on_arm do
      url "https://github.com/yetidevworks/bosun/releases/download/v0.2.13/bosun-darwin-aarch64.tar.gz"
      sha256 "5be8b796cf63e2c8b97c083ac6721548bc9822a6945c02b4834bff3ce025bebb"
    end
    on_intel do
      url "https://github.com/yetidevworks/bosun/releases/download/v0.2.13/bosun-darwin-x86_64.tar.gz"
      sha256 "fe96bcea7d29767ab151d0f35a87aa78fe69b38b7fe1e20f6fe139e9b9342dcf"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/yetidevworks/bosun/releases/download/v0.2.13/bosun-linux-x86_64.tar.gz"
      sha256 "6106fe6f2d9f6e26fe5e615d9c8817bda7b8e4c041afc29eb1f1b91a4b5304ac"
    end
    on_arm do
      url "https://github.com/yetidevworks/bosun/releases/download/v0.2.13/bosun-linux-aarch64.tar.gz"
      sha256 "ffed20ab6f92569a3d05785742e7284eda8cf6d1f7b650d24d09de119fdfa564"
    end
  end

  def install
    bin.install "bosun"
  end

  test do
    assert_match "bosun", shell_output("#{bin}/bosun --version")
  end
end
