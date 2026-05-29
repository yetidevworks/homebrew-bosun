class Bosun < Formula
  desc "Tmux-native orchestrator for AI agent sessions"
  homepage "https://github.com/yetidevworks/bosun"
  license "MIT"
  version "2.0.3"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/bosun/releases/download/v2.0.3/bosun-darwin-aarch64.tar.gz"
      sha256 "96a9e2fc4a13a447026dff06d8baa500bc70ddf71b20d9f54abbd926df6a9600"
    else
      url "https://github.com/yetidevworks/bosun/releases/download/v2.0.3/bosun-darwin-x86_64.tar.gz"
      sha256 "61755f52e7227068ecf2d9120d336c9b5016edf34e0502a0a079d37dfb2f5f4d"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/bosun/releases/download/v2.0.3/bosun-linux-aarch64.tar.gz"
      sha256 "129fb6981c26018e89ee9e8a67491a955f964e568b63b177bb78372314fa3c7d"
    else
      url "https://github.com/yetidevworks/bosun/releases/download/v2.0.3/bosun-linux-x86_64.tar.gz"
      sha256 "15def6f17591dfef88a3e4bbb069d481045c7393516615dfffeb6f78d6dcf4d8"
    end
  end

  def install
    bin.install "bosun"
  end

  test do
    assert_match "bosun", shell_output("#{bin}/bosun --version")
  end
end
