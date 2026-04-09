class PortWho < Formula
  desc "Beautiful CLI that shows which processes are using which ports"
  homepage "https://github.com/bssm-oss/port-who"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bssm-oss/port-who/releases/download/v0.2.0/port-who"
      sha256 "d13c427552d70bf9a6b57a4295b7b7f4f84e7f3341ae36013d76935c489837f0"
    end
  end

  def install
    bin.install "port-who"
  end

  test do
    system "#{bin}/port-who", "--help"
  end
end
