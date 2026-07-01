class Bosun < Formula
  desc "Tmux-native orchestrator for AI agent sessions"
  homepage "https://github.com/yetidevworks/bosun"
  license "MIT"
  version "2.0.13"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/bosun/releases/download/v2.0.13/bosun-darwin-aarch64.tar.gz"
      sha256 "8804c1520e9666ae773e00b3eb9160a0faf53355d721735d06fcd870acfa82a5"
    else
      url "https://github.com/yetidevworks/bosun/releases/download/v2.0.13/bosun-darwin-x86_64.tar.gz"
      sha256 "9228336782800b9aafb68bee6a49b2d147e33744beb2b62ff9174cf99685abdb"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/bosun/releases/download/v2.0.13/bosun-linux-aarch64.tar.gz"
      sha256 "26b606a9fadbe5935b4bc8e52e6f17fad60e92f1616d1fc99879a44cae5c60d0"
    else
      url "https://github.com/yetidevworks/bosun/releases/download/v2.0.13/bosun-linux-x86_64.tar.gz"
      sha256 "825708ef3c69f33e1f128b3306723e220a4d3ad9b8f160ca6ba0f43e13bd13d9"
    end
  end

  def install
    bin.install "bosun"
  end

  test do
    assert_match "bosun", shell_output("#{bin}/bosun --version")
  end
end
