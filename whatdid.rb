class Whatdid < Formula
  desc "Auto-generate daily/weekly reports from GitHub activity"
  homepage "https://github.com/justn-hyeok/whatdid"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/justn-hyeok/whatdid/releases/download/v0.2.0/whatdid-darwin-arm64.tar.gz"
      sha256 "4a2ef324337e1266cc5b9bce986465bd8cae3a72cb46fcd6b2343233ffc62443"
    end
    on_intel do
      url "https://github.com/justn-hyeok/whatdid/releases/download/v0.2.0/whatdid-darwin-amd64.tar.gz"
      sha256 "7195cda10e67af4603397a03056259cb8f2f1efc40b95f30f5164622fa8d3db6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/justn-hyeok/whatdid/releases/download/v0.2.0/whatdid-linux-arm64.tar.gz"
      sha256 "752ba40a4c05b3a342ddf6a37c7a9a28ea3c5f55411f83acd03c3ea6565f02dd"
    end
    on_intel do
      url "https://github.com/justn-hyeok/whatdid/releases/download/v0.2.0/whatdid-linux-amd64.tar.gz"
      sha256 "2ea8f2bb262512ac7f3ae9e040c5d79e8ff4ad365e330bde32496d9293293898"
    end
  end

  def install
    bin.install stable.url.split("/").last.sub(".tar.gz", "") => "whatdid"
  end

  test do
    system "#{bin}/whatdid", "--help"
  end
end
