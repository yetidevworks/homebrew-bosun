class Bosun < Formula
  desc "Tmux-native orchestrator for AI agent sessions"
  homepage "https://github.com/yetidevworks/bosun"
  license "MIT"
  version "2.2.13"

  depends_on "tmux"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/bosun/releases/download/v2.2.13/bosun-darwin-aarch64.tar.gz"
      sha256 "5955d15d0fdff9dbefd0fc738fa2f10aeceb843c2d222e7f3506163f93fbb582"
    else
      url "https://github.com/yetidevworks/bosun/releases/download/v2.2.13/bosun-darwin-x86_64.tar.gz"
      sha256 "320298b24924b5aa30a198480a6058840ab1f0252080385eaaa6f457d76086f9"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/bosun/releases/download/v2.2.13/bosun-linux-aarch64.tar.gz"
      sha256 "3cf04755d6b94eee04f3d5e82e1c1728aca49eb1750b1ed9e306a3160d4a564b"
    else
      url "https://github.com/yetidevworks/bosun/releases/download/v2.2.13/bosun-linux-x86_64.tar.gz"
      sha256 "71b510a00caee7c0a75583ba85f3b70cd7bb8f39881972f40f7e6e1f8f0bee01"
    end
  end

  def install
    bin.install "bosun"
  end

  test do
    assert_match "bosun", shell_output("#{bin}/bosun --version")
  end
end
