class Bosun < Formula
  desc "Tmux-native orchestrator for AI agent sessions"
  homepage "https://github.com/yetidevworks/bosun"
  license "MIT"
  version "2.1.1"

  depends_on "tmux"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/bosun/releases/download/v2.1.1/bosun-darwin-aarch64.tar.gz"
      sha256 "3710175017d25237277866538ca7791ee95dcfcaffd28d227fc35cd3e77113e1"
    else
      url "https://github.com/yetidevworks/bosun/releases/download/v2.1.1/bosun-darwin-x86_64.tar.gz"
      sha256 "e7bfdc4fc111af6bf17849e3681dbba80eb3862be648ee018e054dfc3868c447"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/bosun/releases/download/v2.1.1/bosun-linux-aarch64.tar.gz"
      sha256 "f16d924920fe1344186b313d0cc191ed5aa97f55392e34562fb2b72a0881357f"
    else
      url "https://github.com/yetidevworks/bosun/releases/download/v2.1.1/bosun-linux-x86_64.tar.gz"
      sha256 "c090a8355b52bd72a76e843a31f2944ba2c49fa59822e33ceb213885e9a8de11"
    end
  end

  def install
    bin.install "bosun"
  end

  test do
    assert_match "bosun", shell_output("#{bin}/bosun --version")
  end
end
