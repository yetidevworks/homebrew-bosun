class Bosun < Formula
  desc "Tmux-native orchestrator for AI agent sessions"
  homepage "https://github.com/yetidevworks/bosun"
  license "MIT"
  version "0.4.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/bosun/releases/download/v0.4.0/bosun-darwin-aarch64.tar.gz"
      sha256 "36237b90a40511438d9fb3abc005668f08cf800486b9fa40e2ee3e7d39a86f9d"
    else
      url "https://github.com/yetidevworks/bosun/releases/download/v0.4.0/bosun-darwin-x86_64.tar.gz"
      sha256 "a14550e99f3c99373d1b1091289cead8418a431287dc5e90a4d12071e5366a55"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/bosun/releases/download/v0.4.0/bosun-linux-aarch64.tar.gz"
      sha256 "acece3784cbd6526d9b4af8a313f29ee026acd9e8098dcc1c031144f18486d68"
    else
      url "https://github.com/yetidevworks/bosun/releases/download/v0.4.0/bosun-linux-x86_64.tar.gz"
      sha256 "b2baf73878fa9f16abdc4d38b12cb269350e1389e2121eeddcf14f51c84a540f"
    end
  end

  def install
    bin.install "bosun"
  end

  test do
    assert_match "bosun", shell_output("#{bin}/bosun --version")
  end
end
