class Ganbatte < Formula
  desc "Workflow/shortcut management CLI for lazy developers"
  homepage "https://github.com/bssm-oss/ganbatte"
  version "1.1.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/bssm-oss/ganbatte/releases/download/v1.1.0/ganbatte_darwin_amd64.tar.gz"
      sha256 "16dbde63b91432c99d3689e3a0e446be2189d2976038a3c8aa2f5cc6d2356b38"
    end
    on_arm do
      url "https://github.com/bssm-oss/ganbatte/releases/download/v1.1.0/ganbatte_darwin_arm64.tar.gz"
      sha256 "ca4bd8bd56d9ce701ad88bf259488b0eb0207706aaa95bd44fdc4de719ffbb56"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/bssm-oss/ganbatte/releases/download/v1.1.0/ganbatte_linux_amd64.tar.gz"
      sha256 "97d8ef51e702d9ab907f0999f57a6e1f6777c2ef7ed84af81594c9461e590fe5"
    end
    on_arm do
      url "https://github.com/bssm-oss/ganbatte/releases/download/v1.1.0/ganbatte_linux_arm64.tar.gz"
      sha256 "733085bdfc4e1bc13ce6f6f1c50ef1761db16da712adef1d86f5390e669de63d"
    end
  end

  def install
    bin.install "gnb"
  end

  test do
    system "#{bin}/gnb", "--help"
  end
end
