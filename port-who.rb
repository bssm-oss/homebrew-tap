class PortWho < Formula
  desc "Beautiful CLI that shows which processes are using which ports"
  homepage "https://github.com/bssm-oss/port-who"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bssm-oss/port-who/releases/download/v0.1.0/port-who"
      sha256 "dbff6e934110a45d96e33aaacead964d016f0144fcf491884c1c5db36053bfec"
    end
  end

  def install
    bin.install "port-who"
  end

  test do
    system "#{bin}/port-who", "--help"
  end
end
