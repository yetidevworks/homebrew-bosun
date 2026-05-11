class Bosun < Formula
  desc "Tmux-native orchestrator for AI agent sessions"
  homepage "https://github.com/yetidevworks/bosun"
  license "MIT"
  version "0.2.14"

  on_macos do
    on_arm do
      url "https://github.com/yetidevworks/bosun/releases/download/v0.2.14/bosun-darwin-aarch64.tar.gz"
      sha256 "0f3ceb7e7cccb1c9c6571ea8a97313fd3bce81f25cc95fd20198575c16878528"
    end
    on_intel do
      url "https://github.com/yetidevworks/bosun/releases/download/v0.2.14/bosun-darwin-x86_64.tar.gz"
      sha256 "82c4fd10b62df9700aaa931ba26ad24c018666e5f86abd72951bbd118ed7e396"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/yetidevworks/bosun/releases/download/v0.2.14/bosun-linux-x86_64.tar.gz"
      sha256 "6e6ef5c635e2a0050478eb9f201ad5d80b84fec33a923467b4df568e8476c37e"
    end
    on_arm do
      url "https://github.com/yetidevworks/bosun/releases/download/v0.2.14/bosun-linux-aarch64.tar.gz"
      sha256 "45bc8c0028169459aeb2d70b06e7cca63ea401d2729fdb565c9d1104df9be325"
    end
  end

  def install
    bin.install "bosun"
  end

  test do
    assert_match "bosun", shell_output("#{bin}/bosun --version")
  end
end
