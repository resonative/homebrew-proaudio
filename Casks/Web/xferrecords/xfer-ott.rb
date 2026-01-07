cask "xfer-ott" do
  version "1.3.7"
  sha256 "fe1d10b79445c44a32f365fcbf2a420a2133ae205c8d75f09ba703c7dd42ec54"

  url "https://xferrecords.com/product_downloads/24/freeware"

  name "Xfer Records OTT"
  desc "Multiband compressor"
  homepage "https://xferrecords.com/freeware"

  auto_updates false

  pkg "Install_Xfer_OTT.pkg"

  uninstall pkgutil: "com.xfer.OTT.*"
end
