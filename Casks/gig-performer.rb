cask "gig-performer" do
  version "5.0.9"
  sha256 "1cfff954d0bb20915229d1c138405ebe147965c9d2814aa63f123a78a6468b34"

  url "https://gigperformer5.s3.us-east-2.amazonaws.com/GP#{version}/GigPerformer5-Universal-#{version}.dmg"
  name "Gig Performer"
  desc "Live Performance Audio Plugin Host"
  homepage "https://gigperformer.com"

  livecheck do
    cask "gig-performer"
  end

  auto_updates true
  depends_on macos: ">= :mojave"

  pkg "Gig Performer #{version}.pkg"

  uninstall pkgutil: [
    "com.deskew.GPRelayer",
    "com.deskew.pkg.GP5",
    "com.lostin70s.plugins",
    "com.overloud.THUGigPerformer"
  ]

end