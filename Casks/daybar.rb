cask "daybar" do
  version "1.0.0"
  sha256 "1fd08e68ea2a42f08b22484000bbfdecce98d3efabec2ef4bea4ef5e05b2bb4b"

  url "https://github.com/bssm-oss/daybar/releases/download/v#{version}/daybar-#{version}.dmg"
  name "daybar"
  desc "macOS 메뉴바 D-day 트래커"
  homepage "https://github.com/bssm-oss/daybar"

  app "daybar.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "/Applications/daybar.app"],
                   sudo: false
    system_command "/usr/bin/open",
                   args: ["/Applications/daybar.app"],
                   sudo: false
  end

  caveats <<~EOS
    설치 완료 후 daybar가 자동으로 실행됩니다.
    이후 실행: open /Applications/daybar.app
  EOS
end
