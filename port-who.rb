class PortWho < Formula
  desc "Beautiful CLI that shows which processes are using which ports"
  homepage "https://github.com/bssm-oss/port-who"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bssm-oss/port-who/releases/download/v0.3.0/port-who-macos-arm64"
      sha256 "fe4433a9b955225ecafabd686459a8530a2496c2dd41ed8f5bc3beb479dabb02"
    end
    on_intel do
      url "https://github.com/bssm-oss/port-who/releases/download/v0.3.0/port-who-macos-x64"
      sha256 "a73433d624d6d7d825814814a3bfa024efd1362d91501f7a3750ea53f7a654d7"
    end
  end

  def install
    bin.install stable.url.split("/").last => "port-who"
  end

  test do
    system "#{bin}/port-who", "--help"
  end
end
