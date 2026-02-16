class Walkietalkie < Formula
  desc "Global push-to-talk layer for terminal coding workflows"
  homepage "https://github.com/keepgoingcari/walkietalkie"
  url "https://codeload.github.com/keepgoingcari/walkietalkie/tar.gz/refs/tags/v0.1.0"
  sha256 "45fa27e3a6e628d11f44acdd6ccb861f3c08dc7782254fd56280de753946929b"
  version "0.1.0"

  depends_on :macos

  def install
    system "swift", "build", "-c", "release", "--disable-sandbox"
    bin.install ".build/release/walkietalkie"
  end

  test do
    assert_match "walkietalkie commands", shell_output("#{bin}/walkietalkie help")
  end
end
