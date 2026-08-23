class Bosun < Formula
  desc "Tmux-native orchestrator for AI agent sessions"
  homepage "https://github.com/yetidevworks/bosun"
  license "MIT"
  version "2.1.3"

  depends_on "tmux"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/bosun/releases/download/v2.1.3/bosun-darwin-aarch64.tar.gz"
      sha256 "55c1258f4d4fae047fc2bc9f4648d63bf0a7be4bd04ab844d701ac80e0583f85"
    else
      url "https://github.com/yetidevworks/bosun/releases/download/v2.1.3/bosun-darwin-x86_64.tar.gz"
      sha256 "fe534e83546a4cb2a99790a229ddf55ab56f6db7ba46e91a5fa77eb3b7b19520"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/bosun/releases/download/v2.1.3/bosun-linux-aarch64.tar.gz"
      sha256 "75a9f3e20cb9695b03d573120e81d219b866784df137c5698d304bbe8526132e"
    else
      url "https://github.com/yetidevworks/bosun/releases/download/v2.1.3/bosun-linux-x86_64.tar.gz"
      sha256 "eb9e134101ff0f5717de1d55ba45497f053ed451015540afc3cf9dc2a1d9c146"
    end
  end

  def install
    bin.install "bosun"
  end

  test do
    assert_match "bosun", shell_output("#{bin}/bosun --version")
  end
end
