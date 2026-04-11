class GitRoast < Formula
  desc "CLI that roasts developers by analyzing their git commit history"
  homepage "https://github.com/justn-hyeok/git-roast"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/justn-hyeok/git-roast/releases/download/v0.2.0/git-roast"
      sha256 "0f10d0a1071116ed85147c91861561d63e894cc17ec24176c5f98656dfc11544"
    end
  end

  def install
    bin.install "git-roast"
  end

  test do
    system "#{bin}/git-roast", "--help"
  end
end
