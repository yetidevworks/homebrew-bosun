class Bosun < Formula
  desc "Tmux-native orchestrator for AI agent sessions"
  homepage "https://github.com/yetidevworks/bosun"
  license "MIT"
  version "2.1.5"

  depends_on "tmux"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/bosun/releases/download/v2.1.5/bosun-darwin-aarch64.tar.gz"
      sha256 "6b69c43ecd7d2f760bf744ad39ab958e9878f8aa3f90ab6585726bfab86eda59"
    else
      url "https://github.com/yetidevworks/bosun/releases/download/v2.1.5/bosun-darwin-x86_64.tar.gz"
      sha256 "195e75c89f2fe6566d3d8dc07507ddc703c969166583917a0fd415f4d04a1d7b"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/bosun/releases/download/v2.1.5/bosun-linux-aarch64.tar.gz"
      sha256 "74b5e755327cb97d591dbbc1b09055536004d2c18b0aca94d477a86104e77b28"
    else
      url "https://github.com/yetidevworks/bosun/releases/download/v2.1.5/bosun-linux-x86_64.tar.gz"
      sha256 "4e9cbe94064fea4b9f8fb4f4757b9b9f7bc7db8dad58dda1469be460a2a45915"
    end
  end

  def install
    bin.install "bosun"
  end

  test do
    assert_match "bosun", shell_output("#{bin}/bosun --version")
  end
end
