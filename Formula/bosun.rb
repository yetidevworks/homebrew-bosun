class Bosun < Formula
  desc "Tmux-native orchestrator for AI agent sessions"
  homepage "https://github.com/yetidevworks/bosun"
  license "MIT"
  version "0.3.7"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/bosun/releases/download/v0.3.7/bosun-darwin-aarch64.tar.gz"
      sha256 "ec9c67d1ad9965aaccfced6ae2805d20bf16b0248e49b664adb3eee333de531d"
    else
      url "https://github.com/yetidevworks/bosun/releases/download/v0.3.7/bosun-darwin-x86_64.tar.gz"
      sha256 "b733f65a46d0a470c1bf3a3251491682ad6eb0aa3303e880a26864ffb36db33f"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/bosun/releases/download/v0.3.7/bosun-linux-aarch64.tar.gz"
      sha256 "13738cc31739e7351ac43ee32bcf68ef9c59cd513a3f9c23eb58cd28bd0c0b0a"
    else
      url "https://github.com/yetidevworks/bosun/releases/download/v0.3.7/bosun-linux-x86_64.tar.gz"
      sha256 "6396d50f0735e54f1aac38cbeb6b9a27c1f62fa5c5570347c5c8cd121b65362d"
    end
  end

  def install
    bin.install "bosun"
  end

  test do
    assert_match "bosun", shell_output("#{bin}/bosun --version")
  end
end
