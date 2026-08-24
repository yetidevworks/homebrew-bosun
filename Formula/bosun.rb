class Bosun < Formula
  desc "Tmux-native orchestrator for AI agent sessions"
  homepage "https://github.com/yetidevworks/bosun"
  license "MIT"
  version "2.1.11"

  depends_on "tmux"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/bosun/releases/download/v2.1.11/bosun-darwin-aarch64.tar.gz"
      sha256 "259c665369e379310f8bf567136f520d14daf9db2732531bca80eb00e324d4d8"
    else
      url "https://github.com/yetidevworks/bosun/releases/download/v2.1.11/bosun-darwin-x86_64.tar.gz"
      sha256 "4bdae19059d5c560b08393ae74efab40bd8176a7e8d75ed3a169657525fc2ca1"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/bosun/releases/download/v2.1.11/bosun-linux-aarch64.tar.gz"
      sha256 "36a4dce486432b32b93e2ddbc71a4cd9795148625db19170cba696af62b25d8f"
    else
      url "https://github.com/yetidevworks/bosun/releases/download/v2.1.11/bosun-linux-x86_64.tar.gz"
      sha256 "3d446cf21f71c8445680dad99af2aaea3a15ed9b37d412cd0fd5492eea490d16"
    end
  end

  def install
    bin.install "bosun"
  end

  test do
    assert_match "bosun", shell_output("#{bin}/bosun --version")
  end
end
