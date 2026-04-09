class PortWho < Formula
  desc "Beautiful CLI that shows which processes are using which ports"
  homepage "https://github.com/bssm-oss/port-who"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bssm-oss/port-who/releases/download/v0.2.0/port-who-macos-arm64"
      sha256 "fea54d25d4a0c087171b16773638e9a97f06804a8b8603c4e326cb8d675d6b16"
    end
    on_intel do
      url "https://github.com/bssm-oss/port-who/releases/download/v0.2.0/port-who-macos-x64"
      sha256 "2793f6ed809d11eee082f494d10e413060c0d491dca76d0fd6b50f718aefaa9c"
    end
  end

  def install
    bin.install stable.url.split("/").last => "port-who"
  end

  test do
    system "#{bin}/port-who", "--help"
  end
end
