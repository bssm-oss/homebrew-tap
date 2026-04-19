class GitRoast < Formula
  desc "CLI that roasts developers by analyzing their git commit history"
  homepage "https://github.com/bssm-oss/shitty-justn/tree/main/git-roast"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bssm-oss/shitty-justn/releases/download/git-roast-v0.2.0/git-roast-macos-arm64"
      sha256 "509583d53c521dd44ccd3233effd70d78949cfba7fc5fa7024309cfe4a8cb1b3"
    end
    on_intel do
      url "https://github.com/bssm-oss/shitty-justn/releases/download/git-roast-v0.2.0/git-roast-macos-x64"
      sha256 "20548dbaab1c945530477b817457982daf4d64b6d6c47dbbe5b05f84de1cce40"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bssm-oss/shitty-justn/releases/download/git-roast-v0.2.0/git-roast-linux-arm64"
      sha256 "b32d9b8f6324f88556e812e16e6b09f1328884a5710b7c9f4acb31a582f12b2b"
    end
    on_intel do
      url "https://github.com/bssm-oss/shitty-justn/releases/download/git-roast-v0.2.0/git-roast-linux-x64"
      sha256 "e71718566f6617937b037c1243e9daa35939865f518ac92447ca0c6831ccf26c"
    end
  end

  def install
    bin.install stable.url.split("/").last => "git-roast"
  end

  test do
    system "#{bin}/git-roast", "--help"
  end
end
