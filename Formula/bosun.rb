class Bosun < Formula
  desc "Tmux-native orchestrator for AI agent sessions"
  homepage "https://github.com/yetidevworks/bosun"
  license "MIT"
  version "2.0.10"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/bosun/releases/download/v2.0.10/bosun-darwin-aarch64.tar.gz"
      sha256 "358c9953766566d216dc630c986a14aa8b96d85cdb31e43a3e775468d29fa154"
    else
      url "https://github.com/yetidevworks/bosun/releases/download/v2.0.10/bosun-darwin-x86_64.tar.gz"
      sha256 "d50948d9cb8883403d8ec4dee6f83331f65ac6cb65df854a26707b435ad02bd7"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/bosun/releases/download/v2.0.10/bosun-linux-aarch64.tar.gz"
      sha256 "3443df007cc08c7849b61d0928c9cd8db8e4f77e08b0d1fb48a0b5a6eebbebd7"
    else
      url "https://github.com/yetidevworks/bosun/releases/download/v2.0.10/bosun-linux-x86_64.tar.gz"
      sha256 "c54b5f49a9f52187a972c8ea4b9755a8dc58852df4e8dc2602a16221307a49f8"
    end
  end

  def install
    bin.install "bosun"
  end

  test do
    assert_match "bosun", shell_output("#{bin}/bosun --version")
  end
end
