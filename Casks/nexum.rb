cask "nexum" do
  version "1.5.2"

  on_arm do
    url "https://github.com/Snenjih/nexum/releases/download/v#{version}/Nexum_#{version}_aarch64.dmg"
    sha256 "ae66cd3fe33ec704b70573d91384744080097f2f13b386de7b985609ed2b6def"
  end

  on_intel do
    url "https://github.com/Snenjih/nexum/releases/download/v#{version}/Nexum_#{version}_x64.dmg"
    sha256 "ae66cd3fe33ec704b70573d91384744080097f2f13b386de7b985609ed2b6def"
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
