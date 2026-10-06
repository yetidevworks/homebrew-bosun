class Bosun < Formula
  desc "Tmux-native orchestrator for AI agent sessions"
  homepage "https://github.com/yetidevworks/bosun"
  license "MIT"
  version "2.1.16"

  depends_on "tmux"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/bosun/releases/download/v2.1.16/bosun-darwin-aarch64.tar.gz"
      sha256 "0f4404e76ce77674edba7e531fec59bd7fe8e8bfee2c41ca86f7f0ab5b0ae702"
    else
      url "https://github.com/yetidevworks/bosun/releases/download/v2.1.16/bosun-darwin-x86_64.tar.gz"
      sha256 "0b664fddd67c361c09ebfb98089d859db371e25b4f1d0b2f813bbdbd69e3a81a"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/bosun/releases/download/v2.1.16/bosun-linux-aarch64.tar.gz"
      sha256 "6edc5e91cf7b36eed504d241385239f6f7ee68ef81f5780b9b269621115a749b"
    else
      url "https://github.com/yetidevworks/bosun/releases/download/v2.1.16/bosun-linux-x86_64.tar.gz"
      sha256 "d243bb535c97d9e2e7b88d3497affc446e1c67cdcc11040fab8865d3fb76f37d"
    end
  end

  def install
    bin.install "bosun"
  end

  test do
    assert_match "bosun", shell_output("#{bin}/bosun --version")
  end
end
