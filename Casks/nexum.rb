cask "nexum" do
  version "1.8.1"

  on_arm do
    url "https://github.com/Snenjih/nexum/releases/download/v#{version}/Nexum_#{version}_aarch64.dmg"
    sha256 "118246f1d3369b84448857b93f9b1bacfdcc800e4180337d74e8fb0c41bae182"
  end

  on_intel do
    url "https://github.com/Snenjih/nexum/releases/download/v#{version}/Nexum_#{version}_x64.dmg"
    sha256 "4fcc7fcf771880aebabfca00d86280e7cf60a43bbab90fb561f98ac9f5d68505"
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
