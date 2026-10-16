class Bosun < Formula
  desc "Tmux-native orchestrator for AI agent sessions"
  homepage "https://github.com/yetidevworks/bosun"
  license "MIT"
  version "2.2.0"

  depends_on "tmux"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/bosun/releases/download/v2.2.0/bosun-darwin-aarch64.tar.gz"
      sha256 "9ebbf41fa9458a5725093f1ad2249bd3c42323e8f105125020c85b7d0a86dc8c"
    else
      url "https://github.com/yetidevworks/bosun/releases/download/v2.2.0/bosun-darwin-x86_64.tar.gz"
      sha256 "28769632899b0a54e4e8c7c0e98792702f265f1242a06de4373e807a91002e84"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/bosun/releases/download/v2.2.0/bosun-linux-aarch64.tar.gz"
      sha256 "7c367e3183fd5b8ff89c61a5b7d7e33abe92891e6b1c60f5d8545f43a40776a4"
    else
      url "https://github.com/yetidevworks/bosun/releases/download/v2.2.0/bosun-linux-x86_64.tar.gz"
      sha256 "9a0e3d898773191284ca1f5cbc3949465e6ac478de29a33c3b507a10838b8cb6"
    end
  end

  def install
    bin.install "bosun"
  end

  test do
    assert_match "bosun", shell_output("#{bin}/bosun --version")
  end
end
