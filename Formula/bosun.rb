class Bosun < Formula
  desc "Tmux-native orchestrator for AI agent sessions"
  homepage "https://github.com/yetidevworks/bosun"
  license "MIT"
  version "2.2.2"

  depends_on "tmux"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/bosun/releases/download/v2.2.2/bosun-darwin-aarch64.tar.gz"
      sha256 "1390f65b93a4eb0cbff4dc97057b7390e94a6c2a2d4af9f4d6b78b569009e291"
    else
      url "https://github.com/yetidevworks/bosun/releases/download/v2.2.2/bosun-darwin-x86_64.tar.gz"
      sha256 "7c90d915f0c343d2843368f8fd3f3cb7c26323cddecea867f68b9c5c5e2deddd"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/bosun/releases/download/v2.2.2/bosun-linux-aarch64.tar.gz"
      sha256 "5d90519b6239dbc2fc9a391df526552a2cecd51e5dabadbf5f6f8aac46837d40"
    else
      url "https://github.com/yetidevworks/bosun/releases/download/v2.2.2/bosun-linux-x86_64.tar.gz"
      sha256 "6a818e72cc28828772216989470b5f352ce838c1b2c2467d3b39daf4f5251d78"
    end
  end

  def install
    bin.install "bosun"
  end

  test do
    assert_match "bosun", shell_output("#{bin}/bosun --version")
  end
end
