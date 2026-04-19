class GitRoast < Formula
  desc "CLI that roasts developers by analyzing their git commit history"
  homepage "https://github.com/bssm-oss/shitty-justn/tree/main/git-roast"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bssm-oss/shitty-justn/releases/download/git-roast-v0.2.0/git-roast-macos-arm64"
      sha256 "616d125eaa051ee2778a6c94873068e9ccb9038f0e1c6b7f953a6851f7195654"
    end
    on_intel do
      url "https://github.com/bssm-oss/shitty-justn/releases/download/git-roast-v0.2.0/git-roast-macos-x64"
      sha256 "9c5fce085fb81995b1b4e1b6d27c008d01a97a0363bd03188cc6643bfcfb721e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bssm-oss/shitty-justn/releases/download/git-roast-v0.2.0/git-roast-linux-arm64"
      sha256 "2df6981b8cad1bfb2df81be3f44c9bd0549dc2cb41d527e17b3572090a166ae4"
    end
    on_intel do
      url "https://github.com/bssm-oss/shitty-justn/releases/download/git-roast-v0.2.0/git-roast-linux-x64"
      sha256 "b010183d18184d239709847fe4cfdf5d8cfcd74531bc5676b6b83f2d1f90c070"
    end
  end

  def install
    bin.install stable.url.split("/").last => "git-roast"
  end

  test do
    system "#{bin}/git-roast", "--help"
  end
end
