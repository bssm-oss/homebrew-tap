class GitRoast < Formula
  desc "CLI that roasts developers by analyzing their git commit history"
  homepage "https://github.com/bssm-oss/shitty-justn/tree/main/git-roast"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bssm-oss/shitty-justn/releases/download/git-roast-v0.2.0/git-roast-macos-arm64"
      sha256 "ca0ebf6a7de893714a5abf6ee56b520c278e00afbe80a203071805b45dcbe300"
    end
    on_intel do
      url "https://github.com/bssm-oss/shitty-justn/releases/download/git-roast-v0.2.0/git-roast-macos-x64"
      sha256 "74e85ef41310b26918d39ac15f129e39f2d8b14291de27437440a3ddaf31d2ec"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bssm-oss/shitty-justn/releases/download/git-roast-v0.2.0/git-roast-linux-arm64"
      sha256 "3e59bef1f9485483e2769f2c53dac85782db0dfdb542dd9caa5c76252da541b0"
    end
    on_intel do
      url "https://github.com/bssm-oss/shitty-justn/releases/download/git-roast-v0.2.0/git-roast-linux-x64"
      sha256 "14da4ff2477bcac42c79f1490520355d6491fa176c0840915a075df4f6de18b0"
    end
  end

  def install
    bin.install stable.url.split("/").last => "git-roast"
  end

  test do
    system "#{bin}/git-roast", "--help"
  end
end
