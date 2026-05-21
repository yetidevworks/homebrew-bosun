class Bosun < Formula
  desc "Tmux-native orchestrator for AI agent sessions"
  homepage "https://github.com/yetidevworks/bosun"
  license "MIT"
  version "0.3.8"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/bosun/releases/download/v0.3.8/bosun-darwin-aarch64.tar.gz"
      sha256 "ce574d6ea8e1a360e0f31483cf5f562ceae8bc000e001f8e50a3bc2a907183a3"
    else
      url "https://github.com/yetidevworks/bosun/releases/download/v0.3.8/bosun-darwin-x86_64.tar.gz"
      sha256 "4cbc1eea5875afc8aecd7bdbc0565b6199c2d6637b37e5d7b662b58cbe7d93ef"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/bosun/releases/download/v0.3.8/bosun-linux-aarch64.tar.gz"
      sha256 "c127906aad3afb7b97eff6360b757f91bb9cd349e8399b62d30f544b9bc4e99a"
    else
      url "https://github.com/yetidevworks/bosun/releases/download/v0.3.8/bosun-linux-x86_64.tar.gz"
      sha256 "13bb011ada8c4275ed86226939bb4042b1cee2770452ff5820d48b01f736c86f"
    end
  end

  def install
    bin.install "bosun"
  end

  test do
    assert_match "bosun", shell_output("#{bin}/bosun --version")
  end
end
