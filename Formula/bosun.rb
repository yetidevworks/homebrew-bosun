class Bosun < Formula
  desc "Tmux-native orchestrator for AI agent sessions"
  homepage "https://github.com/yetidevworks/bosun"
  license "MIT"
  version "2.1.4"

  depends_on "tmux"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/bosun/releases/download/v2.1.4/bosun-darwin-aarch64.tar.gz"
      sha256 "8bcf8e0f84b5916f49da244412dcf07d16258e69fe22a519b70e5fef015f4173"
    else
      url "https://github.com/yetidevworks/bosun/releases/download/v2.1.4/bosun-darwin-x86_64.tar.gz"
      sha256 "965520b7d972f3e189f7e6e4d83dcb64a2bceee0c179c50721a9ba60d6193491"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/bosun/releases/download/v2.1.4/bosun-linux-aarch64.tar.gz"
      sha256 "7ff09ac0e6578830427adb119eb395953640363d4452ac04beb0ba002f822389"
    else
      url "https://github.com/yetidevworks/bosun/releases/download/v2.1.4/bosun-linux-x86_64.tar.gz"
      sha256 "eabf6ee2b2524039e81542f0c6f0f7b631f6467f232dfc4d1e110f98413f33f8"
    end
  end

  def install
    bin.install "bosun"
  end

  test do
    assert_match "bosun", shell_output("#{bin}/bosun --version")
  end
end
