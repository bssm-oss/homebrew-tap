cask "daybar" do
  version "1.0.0"
  sha256 "1fd08e68ea2a42f08b22484000bbfdecce98d3efabec2ef4bea4ef5e05b2bb4b"

  url "https://github.com/bssm-oss/daybar/releases/download/v#{version}/daybar-#{version}.dmg"
  name "daybar"
  desc "macOS 메뉴바 D-day 트래커"
  homepage "https://github.com/bssm-oss/daybar"

  app "daybar.app"

  caveats <<~EOS
    daybar은 공증(Notarize)되지 않은 앱입니다.
    처음 실행 시 macOS가 차단할 수 있습니다.

    해결 방법:
      시스템 설정 → 개인 정보 보호 및 보안 → "그래도 열기"

    또는 터미널에서:
      xattr -cr /Applications/daybar.app
  EOS
end
