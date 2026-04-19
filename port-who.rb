class PortWho < Formula
  desc "Beautiful CLI that shows which processes are using which ports"
  homepage "https://github.com/bssm-oss/shitty-justn/tree/main/port-who"
  version "0.4.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bssm-oss/shitty-justn/releases/download/port-who-v0.4.1/port-who-macos-arm64"
      sha256 "65f6c20ca9785b3d0ae6db73bd588162c943648e9c0321c09ecb6719a74b27ed"
    end
    on_intel do
      url "https://github.com/bssm-oss/shitty-justn/releases/download/port-who-v0.4.1/port-who-macos-x64"
      sha256 "982b2980a346966f51aa123f6744a8037688d1d6e0f8d3d50f335d18ffa4676d"
    end
  end

  def install
    bin.install stable.url.split("/").last => "port-who"
  end

  test do
    system "#{bin}/port-who", "--help"
  end
end
