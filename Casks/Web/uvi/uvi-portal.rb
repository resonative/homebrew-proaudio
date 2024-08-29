cask "uvi-portal" do
  version :latest
  sha256 :no_check

  url "https://www.uvi.net/dl-portal.php?p=mac"
  name "UVI Portal"
  desc "UVI software manager"
  homepage "https://www.uvi.net/uvi-portal"

  auto_updates true

  pkg "UVI Portal.pkg"

  uninstall quit:    "net.uvi.UVIPortal",
            pkgutil: "net.uvi.pkg.uviportal",
            delete:  [
              "~/Library/Caches/net.uvi.UVIPortal/",
              "~/Library/Caches/UVI Portal/",
              "~/Library/WebKit/net.uvi.UVIPortal/",
            ]

  zap trash: [
    "~/Library/Application Support/UVI Portal/",
    "~/Library/HTTPStorages/net.uvi.UVIPortal.binarycookies",
    "~/Library/Logs/UVI Portal/",
  ]

  caveats "Ilok packages below are installed with UVI Portal. " \
          "User will have to uninstall/delete these manually:\n\n" \
          "com.paceap.pkg.eden.activationexperience\n" \
          "com.paceap.pkg.eden.iLokLicenseManager\n" \
          "com.paceap.pkg.eden.licensed\n" \
          "\n" \
          "To view the package's list of installed files: " \
          "\e[36mlsbom /var/db/receipts/\e[39m{package name}\e[0m\e[36m.bom\e[0m"
end
