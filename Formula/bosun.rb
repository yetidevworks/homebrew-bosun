class Bosun < Formula
  desc "Tmux-native orchestrator for AI agent sessions"
  homepage "https://github.com/yetidevworks/bosun"
  license "MIT"
  version "0.3.1"

  on_macos do
    on_arm do
      url "https://github.com/yetidevworks/bosun/releases/download/v0.3.1/bosun-darwin-aarch64.tar.gz"
      sha256 "df7070d989fa6b8941ab2fb7e21b9008186ada4bedb9556d8c9e604dcb13ceb1"
    end
    on_intel do
      url "https://github.com/yetidevworks/bosun/releases/download/v0.3.1/bosun-darwin-x86_64.tar.gz"
      sha256 "b77a24663fa05b8ea8639462c753c6b66e1fb29e9cc8d3edfec00a4eff179339"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/yetidevworks/bosun/releases/download/v0.3.1/bosun-linux-x86_64.tar.gz"
      sha256 "a574729e7e93f46f3f94367a16a6adc68692ab68e405d600e607975274c70dd5"
    end
    on_arm do
      url "https://github.com/yetidevworks/bosun/releases/download/v0.3.1/bosun-linux-aarch64.tar.gz"
      sha256 "dab32f3bcec3686ab059b802560037907e95b2285bf189b6609ca59869b0d9ee"
    end
  end

  def install
    bin.install "bosun"
  end

  test do
    assert_match "bosun", shell_output("#{bin}/bosun --version")
  end
end
