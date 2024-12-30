cask "musikhack-master-plan" do
  version "1.5.9"
  sha256 "1d5d9eff385803a0ceea76981a69194e14a995306c739a0219d062cc8de1d23e"

  url "https://downloads.musikhack.com/MasterPlan/MasterPlan_MAC_#{version}.dmg"
  name "Musik Hack Masterplan"
  desc "Master bus processing"
  homepage "https://www.musikhack.com/products/masterplan/"

  auto_updates false

  pkg "Master Plan v#{version.major_minor} Installer.pkg"

  uninstall pkgutil: "com.musikhack.MasterPlan.#{version.major_minor.no_dots}.*"
end
