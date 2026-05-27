class Bosun < Formula
  desc "Tmux-native orchestrator for AI agent sessions"
  homepage "https://github.com/yetidevworks/bosun"
  license "MIT"
  version "0.4.1"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/bosun/releases/download/v0.4.1/bosun-darwin-aarch64.tar.gz"
      sha256 "6751255252436733380bcac71f6ad360801202c7804a2c8e2f0b856667111cef"
    else
      url "https://github.com/yetidevworks/bosun/releases/download/v0.4.1/bosun-darwin-x86_64.tar.gz"
      sha256 "ea077777fcf74e2d50b335cbdbbb57c50475e711a9c9a49c9e4d5a23bdc6293e"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/bosun/releases/download/v0.4.1/bosun-linux-aarch64.tar.gz"
      sha256 "527ad9323c56c5f1cb867e7e88d0be7f7b296b72fcee0072c9dcea45a64d9555"
    else
      url "https://github.com/yetidevworks/bosun/releases/download/v0.4.1/bosun-linux-x86_64.tar.gz"
      sha256 "e80f523606835c54647fae4017620704cf7dbf6da26775eddffd613cd734aab0"
    end
  end

  def install
    bin.install "bosun"
  end

  test do
    assert_match "bosun", shell_output("#{bin}/bosun --version")
  end
end
