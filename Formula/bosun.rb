class Bosun < Formula
  desc "Tmux-native orchestrator for AI agent sessions"
  homepage "https://github.com/yetidevworks/bosun"
  license "MIT"
  version "0.3.2"

  on_macos do
    on_arm do
      url "https://github.com/yetidevworks/bosun/releases/download/v0.3.2/bosun-darwin-aarch64.tar.gz"
      sha256 "585188ec6d14b0e43607f9e6f5ef3019fce9fdf4ecc53a76f0276e71931cda2d"
    end
    on_intel do
      url "https://github.com/yetidevworks/bosun/releases/download/v0.3.2/bosun-darwin-x86_64.tar.gz"
      sha256 "ee598bbfef8cd3d7629aca3fc1e045449d25a684cf3200dc2814d495807ea486"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/yetidevworks/bosun/releases/download/v0.3.2/bosun-linux-x86_64.tar.gz"
      sha256 "f5500fcd452353b57d44fc64412f5308d0c02d9bcb5be64a729274dcfe666ec4"
    end
    on_arm do
      url "https://github.com/yetidevworks/bosun/releases/download/v0.3.2/bosun-linux-aarch64.tar.gz"
      sha256 "2edde5cf62671eacee96d375474f9d00eefa4abef6babfe65f09bda0680893f6"
    end
  end

  def install
    bin.install "bosun"
  end

  test do
    assert_match "bosun", shell_output("#{bin}/bosun --version")
  end
end
