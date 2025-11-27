cask "hazel@6.0.4" do
  version "6.0.4"
  sha256 "17a1379b91ef9e180c8edc907eb8141c2210cb18e0d208016629cec536a948d6"

  url "https://www.noodlesoft.com/Downloads/Hazel-#{version}.dmg"
  name "Hazel"
  desc "Automated organisation"
  homepage "https://www.noodlesoft.com/"

  auto_updates false
  depends_on macos: ">= :monterey"

  app "Hazel.app"

  uninstall quit: "86Z3GCJ4MF.com.noodlesoft.HazelHelper"

  zap trash: [
    "~/Library/Application Support/Hazel",
    "~/Library/Caches/com.noodlesoft.HazelHelper",
    "~/Library/Logs/Hazel",
    "~/Library/Preferences/86Z3GCJ4MF.com.noodlesoft.HazelHelper.plist",
    "~/Library/Preferences/com.noodlesoft.Hazel.plist",
    "~/Library/Preferences/com.noodlesoft.HazelHelper.plist",
    "~/Library/Saved Application State/com.noodlesoft.Hazel.savedState",
  ]
end
