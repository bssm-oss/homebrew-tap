class CliSpeedrun < Formula
  desc "Terminal command typing speed game - like monkeytype for CLI"
  homepage "https://github.com/bssm-oss/shitty-justn/tree/main/cli-speedrun"
  version "0.1.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bssm-oss/shitty-justn/releases/download/cli-speedrun-v0.1.4/cli-speedrun-macos-arm64"
      sha256 "b87e289e00e0c4af79897704041d9ff1f3865b1460ed0e4da7379691d32c49c3"
    end
    on_intel do
      url "https://github.com/bssm-oss/shitty-justn/releases/download/cli-speedrun-v0.1.4/cli-speedrun-macos-x64"
      sha256 "e690f7a2429b6e703fe706f23a58e94bb386b97b11ccccea5862bdb03d2c45f0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bssm-oss/shitty-justn/releases/download/cli-speedrun-v0.1.4/cli-speedrun-linux-arm64"
      sha256 "06391ddcd80a8a140123b3916dfe63614c9a392d1004fbe7bccee8c9a2b4f772"
    end
    on_intel do
      url "https://github.com/bssm-oss/shitty-justn/releases/download/cli-speedrun-v0.1.4/cli-speedrun-linux-x64"
      sha256 "81b72e2e124d745d3ef09b87f4989301f7a35927c286d05826a2ca73e85c7284"
    end
  end

  def install
    bin.install stable.url.split("/").last => "cli-speedrun"
  end

  test do
    system "#{bin}/cli-speedrun", "--help"
  end
end
