class Bosun < Formula
  desc "Tmux-native orchestrator for AI agent sessions"
  homepage "https://github.com/yetidevworks/bosun"
  license "MIT"
  version "0.3.6"

  # Top-level OS+arch selection. The `on_macos do ... on_intel do`
  # DSL and the `if Hardware::CPU.intel?` variant both fail on
  # Homebrew 5.x setups where CPU detection returns `:dunno`
  # (yetidevworks/bosun#1). `OS.mac?`/`OS.linux?` are reliable, and
  # the `else` clause picks up x86_64 even when `Hardware::CPU.arm?`
  # returns `false` on a non-detected CPU.
  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/bosun/releases/download/v0.3.6/bosun-darwin-aarch64.tar.gz"
      sha256 "180f07c6d0900a5fb27a75191fe76f6881f212a2d5f09c30f6db99459e024aac"
    else
      url "https://github.com/yetidevworks/bosun/releases/download/v0.3.6/bosun-darwin-x86_64.tar.gz"
      sha256 "2a18444eb5d851c11ae1eea338f3108b1a06e0afd31045060cf291a5ade7d341"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/bosun/releases/download/v0.3.6/bosun-linux-aarch64.tar.gz"
      sha256 "292f7b6a8ed7b298e11ac0e32e81a038011ff3d4699be23ef59ecec996bce538"
    else
      url "https://github.com/yetidevworks/bosun/releases/download/v0.3.6/bosun-linux-x86_64.tar.gz"
      sha256 "35e85229d7d2e591b8c7b60f44ad56c4e8eebaf703af288654655a487efb8c16"
    end
  end

  def install
    bin.install "bosun"
  end

  test do
    assert_match "bosun", shell_output("#{bin}/bosun --version")
  end
end
