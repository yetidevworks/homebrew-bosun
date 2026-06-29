class Bosun < Formula
  desc "Tmux-native orchestrator for AI agent sessions"
  homepage "https://github.com/yetidevworks/bosun"
  license "MIT"
  version "2.0.12"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/bosun/releases/download/v2.0.12/bosun-darwin-aarch64.tar.gz"
      sha256 "f609d177bbf6258d9db7bc172d48f234709e671a958403939997178af2ee6bb6"
    else
      url "https://github.com/yetidevworks/bosun/releases/download/v2.0.12/bosun-darwin-x86_64.tar.gz"
      sha256 "f13f66983bd65cbb897acc517b34171a7e58b1db3a4a9509fc935c1e283b601c"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/bosun/releases/download/v2.0.12/bosun-linux-aarch64.tar.gz"
      sha256 "b838ddd2686c597093c143be6aae3234539c22a4062e83955e61fe4bfcf90544"
    else
      url "https://github.com/yetidevworks/bosun/releases/download/v2.0.12/bosun-linux-x86_64.tar.gz"
      sha256 "ef7add496fb29dc7aaecc5e4513bed697a1d01021f2cd2cae0552effdf1f50fa"
    end
  end

  def install
    bin.install "bosun"
  end

  test do
    assert_match "bosun", shell_output("#{bin}/bosun --version")
  end
end
