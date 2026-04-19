class Bosun < Formula
  desc "Tmux-native orchestrator for AI agent sessions"
  homepage "https://github.com/yetidevworks/bosun"
  license "MIT"
  version "0.2.10"

  on_macos do
    on_arm do
      url "https://github.com/yetidevworks/bosun/releases/download/v0.2.10/bosun-darwin-aarch64.tar.gz"
      sha256 "9eeaeab9242df0f4d7714057feda853d4e30d75061f6c36e4f4392e34c9101f8"
    end
    on_intel do
      url "https://github.com/yetidevworks/bosun/releases/download/v0.2.10/bosun-darwin-x86_64.tar.gz"
      sha256 "d2d35e5fcb0fbea0ee865954a92a468d8519082a0eda614b317618b4982fc9a8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/yetidevworks/bosun/releases/download/v0.2.10/bosun-linux-x86_64.tar.gz"
      sha256 "e5289bc0b3ecf2e30b96908ee87790438ffded8d829b8ccb3ce37e88dd7e8a57"
    end
    on_arm do
      url "https://github.com/yetidevworks/bosun/releases/download/v0.2.10/bosun-linux-aarch64.tar.gz"
      sha256 "698489d1737c47d5940830c31f945d4ecbe275d29dd85bac2d0cffb80e07a2ac"
    end
  end

  def install
    bin.install "bosun"
  end

  test do
    assert_match "bosun", shell_output("#{bin}/bosun --version")
  end
end
