cask "walkietalkie" do
  version "0.1.0"
  sha256 "47718184ecb7db762d7afc2a4c80f036fc19995486cd73fb4872c48b31fe5371"

  url "https://github.com/keepgoingcari/walkietalkie/releases/download/v#{version}/walkietalkie-macos-arm64-v#{version}.tar.gz"
  name "walkietalkie"
  desc "Global push-to-talk layer for terminal coding workflows"
  homepage "https://github.com/keepgoingcari/walkietalkie"

  depends_on arch: :arm64

  binary "walkietalkie"

  zap trash: "~/.config/walkietalkie"
end
