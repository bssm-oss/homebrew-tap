cask "daybar" do
  version "1.1.0"
  sha256 "ea275d87ab70700cf9f8202e4704490deb3edbab6c42a7e23a2107eed2ff242a"

  url "https://github.com/bssm-oss/daybar/releases/download/v#{version}/daybar-#{version}.dmg"
  name "daybar"
  desc "macOS 메뉴바 D-day 트래커"
  homepage "https://github.com/bssm-oss/daybar"

  app "daybar.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "/Applications/daybar.app"],
                   sudo: false

    wrapper = "#{HOMEBREW_PREFIX}/bin/daybar"
    File.write(wrapper, "#!/bin/sh\nopen -a daybar \"$@\"\n")
    FileUtils.chmod(0755, wrapper)

    system_command "/usr/bin/open",
                   args: ["/Applications/daybar.app"],
                   sudo: false
  end

  uninstall_postflight do
    wrapper = "#{HOMEBREW_PREFIX}/bin/daybar"
    FileUtils.rm_f(wrapper)
  end

  caveats <<~EOS
    설치 완료 후 daybar가 자동으로 실행됩니다.
    터미널에서 `daybar` 명령으로 실행할 수 있습니다.
  EOS
end
