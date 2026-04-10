class PortWho < Formula
  desc "Beautiful CLI that shows which processes are using which ports"
  homepage "https://github.com/bssm-oss/port-who"
  version "0.3.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bssm-oss/port-who/releases/download/v0.3.1/port-who-macos-arm64"
      sha256 "23bb4d8fe3e7a6d419fce047996cf370849982dace1b257a4b95a1aa70c1181d"
    end
    on_intel do
      url "https://github.com/bssm-oss/port-who/releases/download/v0.3.1/port-who-macos-x64"
      sha256 "f4e1e9adac95651a2cf106979e54f5c27a412136948745dbcaaf038b7f036f3b"
    end
  end

  def install
    bin.install stable.url.split("/").last => "port-who"
  end

  test do
    system "#{bin}/port-who", "--help"
  end
end
