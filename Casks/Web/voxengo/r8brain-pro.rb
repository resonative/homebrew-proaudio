cask "r8brain-pro" do
  version "2.12"
  sha256 "d5bcf3e9bf3156b0072548ba8677e1b3a58b1b52afe778c6d03fbebba7951fb4"

  url "https://www.voxengo.com/files/Voxengor8brainPRO_#{version.no_dots}_Mac_setup.dmg"
  name "Voxengo r8brain PRO"
  desc "Sample rate converter"
  homepage "https://www.voxengo.com/product/r8brainpro/"

  auto_updates false
  depends_on macos: ">= :sierra"

  app "r8brain PRO.app"

  uninstall quit: "com.voxengo.audio-tools.app.r8brainPRO"

  zap delete: "~/Library/Preferences/Voxengo/Audio Tools/r8brain PRO/"
end
