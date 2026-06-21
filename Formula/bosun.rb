class Bosun < Formula
  desc "Tmux-native orchestrator for AI agent sessions"
  homepage "https://github.com/yetidevworks/bosun"
  license "MIT"
  version "2.0.11"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/bosun/releases/download/v2.0.11/bosun-darwin-aarch64.tar.gz"
      sha256 "572eaf4b7640ab129405a5dff6866d94ac2865dd06ba9cb65b8e09d61d706bc2"
    else
      url "https://github.com/yetidevworks/bosun/releases/download/v2.0.11/bosun-darwin-x86_64.tar.gz"
      sha256 "58fb32cf15ec65ba707174504b90bcc290663aa9fbe3e7a4ddcd5412d67ce474"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/bosun/releases/download/v2.0.11/bosun-linux-aarch64.tar.gz"
      sha256 "48e42d0ce924fb04e622c5b9ebe86c115221f20ba2d2a7dc3c70f6212f342c3b"
    else
      url "https://github.com/yetidevworks/bosun/releases/download/v2.0.11/bosun-linux-x86_64.tar.gz"
      sha256 "5731d6ee0c8b82362f25f74150d105775d9e87c9f7f928c352082b893f25f47f"
    end
  end

  def install
    bin.install "bosun"
  end

  test do
    assert_match "bosun", shell_output("#{bin}/bosun --version")
  end
end
