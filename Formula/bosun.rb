class Bosun < Formula
  desc "Tmux-native orchestrator for AI agent sessions"
  homepage "https://github.com/yetidevworks/bosun"
  license "MIT"
  version "2.2.9"

  depends_on "tmux"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/bosun/releases/download/v2.2.9/bosun-darwin-aarch64.tar.gz"
      sha256 "5ffe7d6a213b6a439cf6c45079dadb2e8e912f6b183ac83c147217863742d358"
    else
      url "https://github.com/yetidevworks/bosun/releases/download/v2.2.9/bosun-darwin-x86_64.tar.gz"
      sha256 "a01f0db7570ddc87283df3901c6a8312f331cf726bd221c47c28dec4bed60133"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/bosun/releases/download/v2.2.9/bosun-linux-aarch64.tar.gz"
      sha256 "52f5f2a22beb3bdfde7a8961e264694017a169ce1f7dbb526488ebe3462b0afc"
    else
      url "https://github.com/yetidevworks/bosun/releases/download/v2.2.9/bosun-linux-x86_64.tar.gz"
      sha256 "1b90d1a86cafc47e58e06cff6ef7fc27e050fdf837199f576f65c09221c05a92"
    end
  end

  def install
    bin.install "bosun"
  end

  test do
    assert_match "bosun", shell_output("#{bin}/bosun --version")
  end
end
