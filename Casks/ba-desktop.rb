cask "ba-desktop" do
  version "1.0.0"
  sha256 "096c163650de08986a35a76f2ea88b9274058a01a281b831108812ff1d4595ec"

  url "https://github.com/bssm-oss/blue-arhive-desktop/releases/download/v#{version}/BA-Desktop-#{version}.zip"
  name "BA Desktop"
  desc "맥 바탕화면을 블루아카이브 메모리얼 로비로 바꾸는 팬 앱"
  homepage "https://github.com/bssm-oss/blue-arhive-desktop"

  depends_on macos: ">= :sonoma"

  app "BA Desktop.app"

  # Apple 공증이 없는(ad-hoc 서명) 앱이라 받은 표시를 지워야 처음 켤 때 막히지 않는다(같은 탭의 다른 cask 와 같은 방식)
  postflight do
    system_command "/usr/bin/xattr", args: ["-cr", "#{appdir}/BA Desktop.app"], sudo: false
    system_command "/usr/bin/open", args: ["#{appdir}/BA Desktop.app"], sudo: false
  end

  # 앱이 끝날 때 메뉴 막대·Dock·바탕화면을 원래대로 돌린다(quit). 강제 종료로 테마가 남았으면 BA_REVERT 로 되돌린다
  # (적용돼 있을 때만 움직인다 — SystemState.revert 의 isApplied). 순서: quit → script → delete
  uninstall quit:      "com.onthelook.badesktop",
            launchctl: "com.onthelook.badesktop",
            script:    {
              executable:   "/usr/bin/env",
              args:         ["BA_REVERT=1", "#{appdir}/BA Desktop.app/Contents/MacOS/BA Desktop"],
              must_succeed: false,
            },
            delete:    "~/Library/LaunchAgents/com.onthelook.badesktop.plist"

  zap trash: [
    "~/Library/Application Support/BA Desktop",
    "~/Library/Preferences/com.onthelook.badesktop.plist",
  ]

  caveats <<~EOS
    설치하면 BA Desktop 이 바로 켜집니다. 처음 켤 때 «데스크탑 폴더 접근»을 물으면 «허용»을 누르세요(파일 그리드).
    끄기: 메뉴 막대의 BA → BA Desktop 끄기(메뉴 막대·Dock·바탕화면이 원래대로 돌아옵니다).
    학생 모델·게임 그림 © NEXON Games / Yostar — 개인 팬 프로젝트, 넥슨과 무관.
  EOS
end
