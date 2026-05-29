class Bosun < Formula
  desc "Tmux-native orchestrator for AI agent sessions"
  homepage "https://github.com/yetidevworks/bosun"
  license "MIT"
  version "2.0.2"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/bosun/releases/download/v2.0.2/bosun-darwin-aarch64.tar.gz"
      sha256 "8828b4d489231a435917db612f7094e2792420b9b5dd241e13848f06d794e70a"
    else
      url "https://github.com/yetidevworks/bosun/releases/download/v2.0.2/bosun-darwin-x86_64.tar.gz"
      sha256 "10992fd766e9579f04789ac2680aecc17fc41ad2cd509b1746918594dedc3ff7"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/bosun/releases/download/v2.0.2/bosun-linux-aarch64.tar.gz"
      sha256 "54a3904717fe113dc2b8a5f20580e26371a57b463e40beb6401e8b9173b383ad"
    else
      url "https://github.com/yetidevworks/bosun/releases/download/v2.0.2/bosun-linux-x86_64.tar.gz"
      sha256 "9e294f41d38b7ffb196db3edaca30130fb9b7f3b42f6a34b4c191c00813b48f3"
    end
  end

  def install
    bin.install "bosun"
  end

  test do
    assert_match "bosun", shell_output("#{bin}/bosun --version")
  end
end
