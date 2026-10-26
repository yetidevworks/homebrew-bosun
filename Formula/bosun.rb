class Bosun < Formula
  desc "Tmux-native orchestrator for AI agent sessions"
  homepage "https://github.com/yetidevworks/bosun"
  license "MIT"
  version "2.2.10"

  depends_on "tmux"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/bosun/releases/download/v2.2.10/bosun-darwin-aarch64.tar.gz"
      sha256 "76401978043ec1f4f105c5427dddee11a79b9af863902338235c573cffe12d17"
    else
      url "https://github.com/yetidevworks/bosun/releases/download/v2.2.10/bosun-darwin-x86_64.tar.gz"
      sha256 "7b45cbf5b8c24e569e2e893d8f8ccc06139ae785b8e06d23398b983ff74b3216"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/bosun/releases/download/v2.2.10/bosun-linux-aarch64.tar.gz"
      sha256 "9e73b97218d07d8744fde3a81d44175d4ee51d19c59e89ecf99820bf175a2294"
    else
      url "https://github.com/yetidevworks/bosun/releases/download/v2.2.10/bosun-linux-x86_64.tar.gz"
      sha256 "d96a633599860ce4187b38fbf3c22c1678c94faa91d239b91767854cf5f9934d"
    end
  end

  def install
    bin.install "bosun"
  end

  test do
    assert_match "bosun", shell_output("#{bin}/bosun --version")
  end
end
