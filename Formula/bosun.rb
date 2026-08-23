class Bosun < Formula
  desc "Tmux-native orchestrator for AI agent sessions"
  homepage "https://github.com/yetidevworks/bosun"
  license "MIT"
  version "2.1.7"

  depends_on "tmux"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/bosun/releases/download/v2.1.7/bosun-darwin-aarch64.tar.gz"
      sha256 "9a02257298700ecd3ab9511089ed6c05957cf34026b326f3a108b53678abf7ef"
    else
      url "https://github.com/yetidevworks/bosun/releases/download/v2.1.7/bosun-darwin-x86_64.tar.gz"
      sha256 "3ab37a75ff7038f80e857bd07262c05a42c9d48a6cae1b845a250beef6a03fd9"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/bosun/releases/download/v2.1.7/bosun-linux-aarch64.tar.gz"
      sha256 "ee6b22c418854ec0afa51d30b32f896496281f59568f0ab064353d6cdd3e1f4e"
    else
      url "https://github.com/yetidevworks/bosun/releases/download/v2.1.7/bosun-linux-x86_64.tar.gz"
      sha256 "c284bdcf5329956b7ddf1907c850f139458bd04b5d3aa7333a751a3458686e3e"
    end
  end

  def install
    bin.install "bosun"
  end

  test do
    assert_match "bosun", shell_output("#{bin}/bosun --version")
  end
end
