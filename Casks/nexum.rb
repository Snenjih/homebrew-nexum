cask "nexum" do
  version "1.8.9"

  on_arm do
    url "https://github.com/Snenjih/nexum/releases/download/v#{version}/Nexum_#{version}_aarch64.dmg"
    sha256 "f1b23c79d9e6b195a2046dbe7e016e42cba80a53c0ffa756a72f89579be5e6c4"
  end

  on_intel do
    url "https://github.com/Snenjih/nexum/releases/download/v#{version}/Nexum_#{version}_x64.dmg"
    sha256 "f3b72116e98b063bd3ba029561dda14da1ceda50c100b695344b6cf3c223adb0"
  end

  name "Nexum"
  desc "macOS-native remote workspace — SSH, SFTP, Terminal, Editor, AI"
  homepage "https://github.com/Snenjih/nexum"

  depends_on macos: ">= :catalina"

  app "Nexum.app"

  quarantine false

  zap trash: [
    "~/Library/Application Support/com.nexum.app",
    "~/Library/Preferences/com.nexum.app.plist",
    "~/Library/Logs/com.nexum.app",
    "~/Library/Caches/com.nexum.app",
  ]
end
