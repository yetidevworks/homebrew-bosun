class Bosun < Formula
  desc "Tmux-native orchestrator for AI agent sessions"
  homepage "https://github.com/yetidevworks/bosun"
  license "MIT"
  version "2.0.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/bosun/releases/download/v2.0.0/bosun-darwin-aarch64.tar.gz"
      sha256 "ceab9bdedd45285cf1164258e70c5eaeb8fcc3d448488a328d661e443370656c"
    else
      url "https://github.com/yetidevworks/bosun/releases/download/v2.0.0/bosun-darwin-x86_64.tar.gz"
      sha256 "d408a2e2ee41895f8e8c4e74ac80d9c52552233186d0a024c8c06e45d2ed62bc"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/bosun/releases/download/v2.0.0/bosun-linux-aarch64.tar.gz"
      sha256 "9c839f2f02634ab342e8616fa868aa55aa4ec0ff2a9f76254bfd676f362351c0"
    else
      url "https://github.com/yetidevworks/bosun/releases/download/v2.0.0/bosun-linux-x86_64.tar.gz"
      sha256 "01ffc2863c9f89f0eb7b4ecf530cff62e21692764642189a01369cc61aa6e5e5"
    end
  end

  def install
    bin.install "bosun"
  end

  test do
    assert_match "bosun", shell_output("#{bin}/bosun --version")
  end
end
