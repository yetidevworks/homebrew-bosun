class Bosun < Formula
  desc "Tmux-native orchestrator for AI agent sessions"
  homepage "https://github.com/yetidevworks/bosun"
  license "MIT"
  version "2.2.12"

  depends_on "tmux"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/bosun/releases/download/v2.2.12/bosun-darwin-aarch64.tar.gz"
      sha256 "4bbccc6bef68b4c0966666be44cffb9e873365574bd5c5b09ed8508627ca8ee3"
    else
      url "https://github.com/yetidevworks/bosun/releases/download/v2.2.12/bosun-darwin-x86_64.tar.gz"
      sha256 "3c43a74c86bdd0f181781268960f839f2cca339e9d59ceea9266e00126b88801"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/bosun/releases/download/v2.2.12/bosun-linux-aarch64.tar.gz"
      sha256 "0f1936b41b60a384363cb9e5bea2934cd92f9188e0226365af8ded85b9513d78"
    else
      url "https://github.com/yetidevworks/bosun/releases/download/v2.2.12/bosun-linux-x86_64.tar.gz"
      sha256 "e5f4b989463a9f0484f6669502a94b87191c547037af913392489f8266c584a6"
    end
  end

  def install
    bin.install "bosun"
  end

  test do
    assert_match "bosun", shell_output("#{bin}/bosun --version")
  end
end
