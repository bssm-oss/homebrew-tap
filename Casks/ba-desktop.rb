cask "ba-desktop" do
  version "1.2.1"
  sha256 "373cb10a771d03ee91b53dbf946a82eb69edc367bf90683bfba499c6ac20efe9"

  url "https://github.com/bssm-oss/blue-arhive-desktop/releases/download/v#{version}/BA-Desktop-#{version}.zip"
  name "BA Desktop"
  desc "맥 바탕화면을 블루아카이브 메모리얼 로비로 바꾸는 팬 앱"
  homepage "https://github.com/bssm-oss/blue-arhive-desktop"

  depends_on macos: :sonoma

  app "BA Desktop.app"

  # Apple 공증이 없는(ad-hoc 서명) 앱이라 받은 표시(quarantine)를 지워야 처음 켤 때 막히지 않는다.
  # 설치 단계는 샌드박스에서 돌아 appdir 를 쓸 수 없고(경로는 기본 위치) 앱을 띄울 수도 없다(실측: open 이 -10810) → 켜기는 caveats 로 안내
  postflight_steps do
    run "/usr/bin/xattr",
        args:           ["-cr", "/Applications/BA Desktop.app"],
        writable_paths: ["BA Desktop.app"],
        writable_base:  :appdir
  end

  # 앱이 끝날 때 메뉴 막대·Dock·바탕화면을 원래대로 돌린다(quit). 강제 종료로 테마가 남았으면 BA_REVERT 로 되돌린다
  # (적용돼 있을 때만 움직인다 — SystemState.revert 의 isApplied).
  # 로그인 항목은 여기서 지우지 않는다: 앱은 사용자가 지운 로그인 항목을 되살리지 않으므로(설정이 바뀔 때만 씀) 여기서 지우면
  # brew upgrade(지우고 다시 설치)마다 «로그인할 때 켜기»가 꺼졌다(실측). 완전히 지우기는 zap(brew uninstall --zap).
  # delete: 는 쓰지 않는다 — 집 폴더 파일도 sudo 로 지우려다 암호를 못 받아 실패했다(실측).
  uninstall quit:   "com.onthelook.badesktop",
            script: {
              executable:   "/usr/bin/env",
              args:         ["BA_REVERT=1", "#{appdir}/BA Desktop.app/Contents/MacOS/BA Desktop"],
              must_succeed: false,
            }

  zap trash: [
    "~/Library/Application Support/BA Desktop",
    "~/Library/LaunchAgents/com.onthelook.badesktop.plist",
    "~/Library/Preferences/com.onthelook.badesktop.plist",
  ]

  caveats <<~EOS
    켜기: open -a "BA Desktop"  (다음부터는 로그인할 때 저절로 켜집니다)
    처음 켤 때 «데스크탑 폴더 접근»을 물으면 «허용»을 누르세요(파일 그리드).
    끄기: 메뉴 막대의 BA → BA Desktop 끄기(메뉴 막대·Dock·바탕화면이 원래대로 돌아옵니다).
    설정·로그인 항목까지 모두 지우기: brew uninstall --zap --cask ba-desktop
    학생 모델·게임 그림 © NEXON Games / Yostar — 개인 팬 프로젝트, 넥슨과 무관.
  EOS
end
