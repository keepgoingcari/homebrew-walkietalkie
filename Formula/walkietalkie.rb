class Walkietalkie < Formula
  desc "Global push-to-talk layer for terminal coding workflows"
  homepage "https://github.com/keepgoingcari/walkietalkie"
  version "0.1.0"

  on_arm do
    url "https://github.com/keepgoingcari/walkietalkie/releases/download/v0.1.0/walkietalkie-macos-arm64-v0.1.0.tar.gz"
    sha256 "47718184ecb7db762d7afc2a4c80f036fc19995486cd73fb4872c48b31fe5371"
  end

  on_intel do
    url "https://codeload.github.com/keepgoingcari/walkietalkie/tar.gz/refs/tags/v0.1.0"
    sha256 "45fa27e3a6e628d11f44acdd6ccb861f3c08dc7782254fd56280de753946929b"
  end

  depends_on :macos

  def install
    if Hardware::CPU.arm?
      bin.install "walkietalkie"
    else
      system "swift", "build", "-c", "release", "--disable-sandbox"
      bin.install ".build/release/walkietalkie"
    end
  end

  test do
    assert_match "walkietalkie commands", shell_output("#{bin}/walkietalkie help")
  end
end
