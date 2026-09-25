class Bosun < Formula
  desc "Tmux-native orchestrator for AI agent sessions"
  homepage "https://github.com/yetidevworks/bosun"
  license "MIT"
  version "2.1.14"

  depends_on "tmux"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/bosun/releases/download/v2.1.14/bosun-darwin-aarch64.tar.gz"
      sha256 "759dc605bd4514f0a243bced71614de373312ebdba188beaa0ad13774ce88a40"
    else
      url "https://github.com/yetidevworks/bosun/releases/download/v2.1.14/bosun-darwin-x86_64.tar.gz"
      sha256 "c7b93fabbe81429d20c3c629ea90d3d971916ebc22b0921bfed791f99ca22a28"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/bosun/releases/download/v2.1.14/bosun-linux-aarch64.tar.gz"
      sha256 "f869645cbab3e9d9bcb324d6fa867c51cfa61d00a2d5b0d018d6672764c8976c"
    else
      url "https://github.com/yetidevworks/bosun/releases/download/v2.1.14/bosun-linux-x86_64.tar.gz"
      sha256 "accadeb139bcbe4efed30635e319fd3f044b91b789063ef0d42243ffcd93bd68"
    end
  end

  def install
    bin.install "bosun"
  end

  test do
    assert_match "bosun", shell_output("#{bin}/bosun --version")
  end
end
