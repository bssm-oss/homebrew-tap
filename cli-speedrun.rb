class CliSpeedrun < Formula
  desc "Terminal command typing speed game - like monkeytype for CLI"
  homepage "https://github.com/bssm-oss/shitty-justn/tree/main/cli-speedrun"
  version "0.1.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bssm-oss/shitty-justn/releases/download/cli-speedrun-v0.1.3/cli-speedrun-macos-arm64"
      sha256 "702cee0bd889d8501384ec799f33e7d0a88d1793f91426ff1e32f5c0c30b5415"
    end
    on_intel do
      url "https://github.com/bssm-oss/shitty-justn/releases/download/cli-speedrun-v0.1.3/cli-speedrun-macos-x64"
      sha256 "5f3c6430be94a278d5313bda1801e53015099993692d65913c29367a12e4e8fa"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bssm-oss/shitty-justn/releases/download/cli-speedrun-v0.1.3/cli-speedrun-linux-arm64"
      sha256 "049103faac72aa3995928f80ffdf16f95995ccfdf6754bc4f2e8e74e05d4b85b"
    end
    on_intel do
      url "https://github.com/bssm-oss/shitty-justn/releases/download/cli-speedrun-v0.1.3/cli-speedrun-linux-x64"
      sha256 "9d93bc9123db3aae7a9366156b4d7bb792b83aa95654a88893f9f9b9dd1bcb13"
    end
  end

  def install
    bin.install stable.url.split("/").last => "cli-speedrun"
  end

  test do
    system "#{bin}/cli-speedrun", "--help"
  end
end
