class Bosun < Formula
  desc "Tmux-native orchestrator for AI agent sessions"
  homepage "https://github.com/yetidevworks/bosun"
  license "MIT"
  version "2.1.2"

  depends_on "tmux"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/bosun/releases/download/v2.1.2/bosun-darwin-aarch64.tar.gz"
      sha256 "5a80d11dd1e241a072288f34a2fc01646f5cbad5fb1ffa3a68efa8f3d68ea138"
    else
      url "https://github.com/yetidevworks/bosun/releases/download/v2.1.2/bosun-darwin-x86_64.tar.gz"
      sha256 "96ec87a75c41fcca0efcb54183611e60ec5dda481bf9e08e19158a68c96a9796"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/bosun/releases/download/v2.1.2/bosun-linux-aarch64.tar.gz"
      sha256 "e0735dbd05acc347afc038c437f6b842c45a9fd4adc4988d97060eaedac14319"
    else
      url "https://github.com/yetidevworks/bosun/releases/download/v2.1.2/bosun-linux-x86_64.tar.gz"
      sha256 "4f7f170a61a58ec2a19b7d8ba2ee914415933267cdd4f9ef684d54a1858d4055"
    end
  end

  def install
    bin.install "bosun"
  end

  test do
    assert_match "bosun", shell_output("#{bin}/bosun --version")
  end
end
