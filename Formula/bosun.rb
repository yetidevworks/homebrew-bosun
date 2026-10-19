class Bosun < Formula
  desc "Tmux-native orchestrator for AI agent sessions"
  homepage "https://github.com/yetidevworks/bosun"
  license "MIT"
  version "2.2.6"

  depends_on "tmux"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/bosun/releases/download/v2.2.6/bosun-darwin-aarch64.tar.gz"
      sha256 "44416d7fab653162c38fbd6ca528fa0d67e36ec44c9590de094f99dc6ca240d4"
    else
      url "https://github.com/yetidevworks/bosun/releases/download/v2.2.6/bosun-darwin-x86_64.tar.gz"
      sha256 "8abb734762dff160041571c07b460f5c079fd4ae99cebc48fa6bbe0bd2a12227"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/bosun/releases/download/v2.2.6/bosun-linux-aarch64.tar.gz"
      sha256 "25769ecebcbe7abd92bbc92b18ba0050b05695be215563e479598aa354f419d3"
    else
      url "https://github.com/yetidevworks/bosun/releases/download/v2.2.6/bosun-linux-x86_64.tar.gz"
      sha256 "8e6a37763fbda7358c1062cb0395bd520962f3065f5ff75d8e70fd469ce74863"
    end
  end

  def install
    bin.install "bosun"
  end

  test do
    assert_match "bosun", shell_output("#{bin}/bosun --version")
  end
end
