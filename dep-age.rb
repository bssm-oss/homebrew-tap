class DepAge < Formula
  desc "Visualize how old your project dependencies are"
  homepage "https://github.com/bssm-oss/shitty-justn/tree/main/dep-age"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/bssm-oss/shitty-justn/releases/download/dep-age-v0.1.0/dep-age-x86_64-apple-darwin.tar.gz"
      sha256 "cedeafd8ee79d4ce8a10f6e133704c8993db234389231c9ae140145a36f5ff1e"
    end
    on_arm do
      url "https://github.com/bssm-oss/shitty-justn/releases/download/dep-age-v0.1.0/dep-age-aarch64-apple-darwin.tar.gz"
      sha256 "a3e1cb9c35f07646c596961598a08c1df2826853c75adbeec53c996a38f2f3cc"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/bssm-oss/shitty-justn/releases/download/dep-age-v0.1.0/dep-age-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cdb4eaffd42745fd41c214a29d4d2fa280cced151eeb6d7fe4609e6fd1dd4097"
    end
    on_arm do
      url "https://github.com/bssm-oss/shitty-justn/releases/download/dep-age-v0.1.0/dep-age-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "fba6e9c9e20e25c5dec2f1ba0c2f56fa2e672978c96da5f38c10de98824b0bf5"
    end
  end

  def install
    bin.install "dep-age"
  end

  test do
    system "#{bin}/dep-age", "--help"
  end
end
