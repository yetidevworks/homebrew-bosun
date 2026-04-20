class Bosun < Formula
  desc "Tmux-native orchestrator for AI agent sessions"
  homepage "https://github.com/yetidevworks/bosun"
  license "MIT"
  version "0.2.11"

  on_macos do
    on_arm do
      url "https://github.com/yetidevworks/bosun/releases/download/v0.2.11/bosun-darwin-aarch64.tar.gz"
      sha256 "efdfa1431fdb082173cd069be20cc42c8d1a2c3c9f374aaf3c1a0315f26bf0c0"
    end
    on_intel do
      url "https://github.com/yetidevworks/bosun/releases/download/v0.2.11/bosun-darwin-x86_64.tar.gz"
      sha256 "c8a5bf471dbd2299af46980bde07918ec2cfbcdf2f76948d64ac46c4bf848929"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/yetidevworks/bosun/releases/download/v0.2.11/bosun-linux-x86_64.tar.gz"
      sha256 "346790d3193436fae93e082d1582a37794f1b732603452526d6bda9bb3107bd5"
    end
    on_arm do
      url "https://github.com/yetidevworks/bosun/releases/download/v0.2.11/bosun-linux-aarch64.tar.gz"
      sha256 "140bc71b742d3e9c2fb0e5cc6644876ccc3e6f6c2bb3b0869aa2070aee0c7add"
    end
  end

  def install
    bin.install "bosun"
  end

  test do
    assert_match "bosun", shell_output("#{bin}/bosun --version")
  end
end
