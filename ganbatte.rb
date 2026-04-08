class Ganbatte < Formula
  desc "Workflow/shortcut management CLI for lazy developers"
  homepage "https://github.com/bssm-oss/ganbatte"
  version "1.0.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/bssm-oss/ganbatte/releases/download/v1.0.1/ganbatte_darwin_amd64.tar.gz"
      sha256 "b1173a810cee947729cb04330c5c90a245757ec291e66573417d88e140caa12f"
    end
    on_arm do
      url "https://github.com/bssm-oss/ganbatte/releases/download/v1.0.1/ganbatte_darwin_arm64.tar.gz"
      sha256 "22e35dce098c8988719137ca780ab2fcc8192d69ec57ef6f3dab398c4bad0096"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/bssm-oss/ganbatte/releases/download/v1.0.1/ganbatte_linux_amd64.tar.gz"
      sha256 "02487dbc50acf5b7cb01c62a7c3857c04871f5f1b94dd0d8dafe97787a758605"
    end
    on_arm do
      url "https://github.com/bssm-oss/ganbatte/releases/download/v1.0.1/ganbatte_linux_arm64.tar.gz"
      sha256 "bd5d660fc052e950041e1706e4107383038cc207839e91b2eb72288db6445d72"
    end
  end

  def install
    bin.install "gnb"
  end

  test do
    system "#{bin}/gnb", "--help"
  end
end
