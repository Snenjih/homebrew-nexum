cask "labonair" do
  version "1.9.0"

  on_arm do
    url "https://github.com/Snenjih/labonair/releases/download/v#{version}/Labonair_#{version}_aarch64.dmg"
    sha256 "2df10a90a6c3216677ee7f427e422ec7fe3a8bd38456ca2d47893e76bcde403f"
  end

  on_intel do
    url "https://github.com/Snenjih/labonair/releases/download/v#{version}/Labonair_#{version}_x64.dmg"
    sha256 "7421e09f3d9d7cd253eb3e0275fa45c508ac6b731559eeec609567eb13a2bb98"
  end

  name "Labonair"
  desc "macOS-native remote workspace — SSH, SFTP, Terminal, Editor, AI"
  homepage "https://github.com/Snenjih/labonair"

  depends_on macos: ">= :catalina"

  app "Labonair.app"

  quarantine false

  zap trash: [
    "~/Library/Application Support/com.labonair.app",
    "~/Library/Preferences/com.labonair.app.plist",
    "~/Library/Logs/com.labonair.app",
    "~/Library/Caches/com.labonair.app",
  ]
end
