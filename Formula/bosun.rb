class Bosun < Formula
  desc "Tmux-native orchestrator for AI agent sessions"
  homepage "https://github.com/yetidevworks/bosun"
  license "MIT"
  version "0.3.5"

  on_macos do
    on_arm do
      url "https://github.com/yetidevworks/bosun/releases/download/v0.3.5/bosun-darwin-aarch64.tar.gz"
      sha256 "91b14681cf53cc5dd1091ab80d49ad356c4d63127d8633d74229651e47bdf22d"
    end
    on_intel do
      url "https://github.com/yetidevworks/bosun/releases/download/v0.3.5/bosun-darwin-x86_64.tar.gz"
      sha256 "6525619564e43af259ab6d7d5b14688b8c5afa3642e13be2d9e2960b4d1c0209"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/yetidevworks/bosun/releases/download/v0.3.5/bosun-linux-x86_64.tar.gz"
      sha256 "432da32b100b76496a2525da4d97cfe8cba7a2fdccf4879504fa5c0fd80e81e2"
    end
    on_arm do
      url "https://github.com/yetidevworks/bosun/releases/download/v0.3.5/bosun-linux-aarch64.tar.gz"
      sha256 "d7cd6f65998b104aa9483ac206f13f2d7b6532fb0ddec630da7ced2c4b60e04d"
    end
  end

  def install
    bin.install "bosun"
  end

  test do
    assert_match "bosun", shell_output("#{bin}/bosun --version")
  end
end
