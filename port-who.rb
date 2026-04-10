class PortWho < Formula
  desc "Beautiful CLI that shows which processes are using which ports"
  homepage "https://github.com/bssm-oss/port-who"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bssm-oss/port-who/releases/download/v0.4.0/port-who-macos-arm64"
      sha256 "28ba849b8a55b13a06840a438be077899c787ee576aba309041eae9709dd038d"
    end
    on_intel do
      url "https://github.com/bssm-oss/port-who/releases/download/v0.4.0/port-who-macos-x64"
      sha256 "7d457e99df9c566b44aa934ec2041371b2127887d44c5aab6f291cbea00920e3"
    end
  end

  def install
    bin.install stable.url.split("/").last => "port-who"
  end

  test do
    system "#{bin}/port-who", "--help"
  end
end
