class Bosun < Formula
  desc "Tmux-native orchestrator for AI agent sessions"
  homepage "https://github.com/yetidevworks/bosun"
  license "MIT"
  version "0.2.4"

  on_macos do
    on_arm do
      url "https://github.com/yetidevworks/bosun/releases/download/v0.2.4/bosun-darwin-aarch64.tar.gz"
      sha256 "fc618983018414272302a24fa321aac79a047818563d953df91c8e5ec64ea390"
    end
    on_intel do
      url "https://github.com/yetidevworks/bosun/releases/download/v0.2.4/bosun-darwin-x86_64.tar.gz"
      sha256 "012a0f15a69e8b5e1bcfa96ff5d46d8b954d77bfa57be63f7815bbaa952f6be0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/yetidevworks/bosun/releases/download/v0.2.4/bosun-linux-x86_64.tar.gz"
      sha256 "63ef62fc93ba4edbb7cc42fc71b8f90c3e101549b7e4a7734b003d9c7faddc69"
    end
    on_arm do
      url "https://github.com/yetidevworks/bosun/releases/download/v0.2.4/bosun-linux-aarch64.tar.gz"
      sha256 "1756c87172242596ef998084f972ba9e89f1a7071ff17b32e427ecac7a976902"
    end
  end

  def install
    bin.install "bosun"
  end

  test do
    assert_match "bosun", shell_output("#{bin}/bosun --version")
  end
end
