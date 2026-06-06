cask "nexum" do
  version "1.6.5"

  on_arm do
    url "https://github.com/Snenjih/nexum/releases/download/v#{version}/Nexum_#{version}_aarch64.dmg"
    sha256 "c8b26749b23cb10a3fc06a39f6ad71176382a251b1401f1aefbede3261eed169"
  end

  on_intel do
    url "https://github.com/Snenjih/nexum/releases/download/v#{version}/Nexum_#{version}_x64.dmg"
    sha256 "46143c562d18959f9903234122031eef63fb9d289764f04ee5d0a186ede49535"
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
