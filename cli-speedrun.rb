class CliSpeedrun < Formula
  desc "Terminal command typing speed game - like monkeytype for CLI"
  homepage "https://github.com/bssm-oss/cli-speedrun"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bssm-oss/cli-speedrun/releases/download/v0.1.0/cli-speedrun"
      sha256 "16f84f95cf5d71e72a054c8a30339ee3e677a1f8c7ceb7960593cb73ab05dbc0"
    end
  end

  def install
    bin.install "cli-speedrun"
  end

  test do
    system "#{bin}/cli-speedrun", "--help"
  end
end
