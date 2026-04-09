class GitRoast < Formula
  desc "CLI that roasts developers by analyzing their git commit history"
  homepage "https://github.com/bssm-oss/git-roast"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bssm-oss/git-roast/releases/download/v0.1.0/git-roast"
      sha256 "84971f1c2a1a315775685c1f6d7c524c93d7643f141aac34c3ab2466628c3a3d"
    end
  end

  def install
    bin.install "git-roast"
  end

  test do
    system "#{bin}/git-roast", "--help"
  end
end
