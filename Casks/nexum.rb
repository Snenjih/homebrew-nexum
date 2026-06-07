cask "nexum" do
  version "1.6.6"

  on_arm do
    url "https://github.com/Snenjih/nexum/releases/download/v#{version}/Nexum_#{version}_aarch64.dmg"
    sha256 "edd7e36cbde039c6350ae7140569ab1b9d038c38a6762483150c0e0b63390b74"
  end

  on_intel do
    url "https://github.com/Snenjih/nexum/releases/download/v#{version}/Nexum_#{version}_x64.dmg"
    sha256 "eb689988d8636d5c0cd9de73b97136c2fee9bce3af0c792a96a2b70f02315ce0"
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
