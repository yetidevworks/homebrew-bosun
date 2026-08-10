class Bosun < Formula
  desc "Tmux-native orchestrator for AI agent sessions"
  homepage "https://github.com/yetidevworks/bosun"
  license "MIT"
  version "2.1.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/bosun/releases/download/v2.1.0/bosun-darwin-aarch64.tar.gz"
      sha256 "eef23c39f661795aeb54afcd0a395899352ff950f1781d6795cfe3abd32184ea"
    else
      url "https://github.com/yetidevworks/bosun/releases/download/v2.1.0/bosun-darwin-x86_64.tar.gz"
      sha256 "303afb0d4453557039c2d21052dd0d09c01a456e2a542f0aac7d4c11f667ac27"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/bosun/releases/download/v2.1.0/bosun-linux-aarch64.tar.gz"
      sha256 "7b5646c376a1d5a7b169960f37ac466b77562f8a47aa34bf4dfe6c9a741ddfd3"
    else
      url "https://github.com/yetidevworks/bosun/releases/download/v2.1.0/bosun-linux-x86_64.tar.gz"
      sha256 "8ed3cb237db32d980968a7060dd37b63220fb173c29182202de16f081afec856"
    end
  end

  def install
    bin.install "bosun"
  end

  test do
    assert_match "bosun", shell_output("#{bin}/bosun --version")
  end
end
