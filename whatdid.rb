class Whatdid < Formula
  desc "Auto-generate daily/weekly reports from GitHub activity"
  homepage "https://github.com/bssm-oss/shitty-justn/tree/main/whatdid"
  version "0.2.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bssm-oss/shitty-justn/releases/download/whatdid-v0.2.2/whatdid-darwin-arm64.tar.gz"
      sha256 "4d8a56f2f31f068b912327955c5c467aa7f7425be8300c632893643ce8972934"
    end
    on_intel do
      url "https://github.com/bssm-oss/shitty-justn/releases/download/whatdid-v0.2.2/whatdid-darwin-amd64.tar.gz"
      sha256 "a6876640e069e57b40d39040e78bb29a12d07eecf0f8fe3b0141ca56fc7026dc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bssm-oss/shitty-justn/releases/download/whatdid-v0.2.2/whatdid-linux-arm64.tar.gz"
      sha256 "0af54b773e550201a4e0d9f8215c51d3e2d49252520a4207207948211f9c9e37"
    end
    on_intel do
      url "https://github.com/bssm-oss/shitty-justn/releases/download/whatdid-v0.2.2/whatdid-linux-amd64.tar.gz"
      sha256 "93e3d5b75c48362ed1083248bdf198ae1b4a756bc8d0089f230b6980f065e645"
    end
  end

  def install
    bin.install stable.url.split("/").last.sub(".tar.gz", "") => "whatdid"
  end

  test do
    system "#{bin}/whatdid", "--help"
  end
end
