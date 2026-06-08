class Bosun < Formula
  desc "Tmux-native orchestrator for AI agent sessions"
  homepage "https://github.com/yetidevworks/bosun"
  license "MIT"
  version "2.0.9"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/bosun/releases/download/v2.0.9/bosun-darwin-aarch64.tar.gz"
      sha256 "dfe08b9b20098a28ad326db45225e1fc349f0ab19301009aab9c35235807af47"
    else
      url "https://github.com/yetidevworks/bosun/releases/download/v2.0.9/bosun-darwin-x86_64.tar.gz"
      sha256 "11b79d48b37be9c2f3e0b8a65d650b49378763fc3dda340ecb6e59b16a02cff7"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/bosun/releases/download/v2.0.9/bosun-linux-aarch64.tar.gz"
      sha256 "415ed668cf9d72621f9bad9586a497bf1e2d997b5866a645b4b332832094467a"
    else
      url "https://github.com/yetidevworks/bosun/releases/download/v2.0.9/bosun-linux-x86_64.tar.gz"
      sha256 "12d98474289cfe5c53854b3abe15ee9bfc68aac71fe7d6fa2aa32fbf57557ffe"
    end
  end

  def install
    bin.install "bosun"
  end

  test do
    assert_match "bosun", shell_output("#{bin}/bosun --version")
  end
end
