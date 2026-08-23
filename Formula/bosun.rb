class Bosun < Formula
  desc "Tmux-native orchestrator for AI agent sessions"
  homepage "https://github.com/yetidevworks/bosun"
  license "MIT"
  version "2.1.6"

  depends_on "tmux"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/bosun/releases/download/v2.1.6/bosun-darwin-aarch64.tar.gz"
      sha256 "0353463f2cec0aa039569fce615387d8006a054f1896009c868c0b4d30602afb"
    else
      url "https://github.com/yetidevworks/bosun/releases/download/v2.1.6/bosun-darwin-x86_64.tar.gz"
      sha256 "04daa02b8ed59a8cb7b98ae15754fcad100415fe4dd242f04c1a72660b594476"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/bosun/releases/download/v2.1.6/bosun-linux-aarch64.tar.gz"
      sha256 "6400912baf1127216f5991dc30da2ebde9cbe205c101e388355861183cf446c7"
    else
      url "https://github.com/yetidevworks/bosun/releases/download/v2.1.6/bosun-linux-x86_64.tar.gz"
      sha256 "fd318a85f287ec24c3c89490a3deb9d3e7049dd0b8920452888fcfd9b18cecf0"
    end
  end

  def install
    bin.install "bosun"
  end

  test do
    assert_match "bosun", shell_output("#{bin}/bosun --version")
  end
end
