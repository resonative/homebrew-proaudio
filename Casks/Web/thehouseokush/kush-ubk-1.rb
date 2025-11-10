cask "kush-ubk-1" do
  version "1.6.1"
  sha256 "dc4fa1307f6a87c86f54d1463d02c78acd61c0581e28e8cf53d589a817a0a2b3"

  url "https://www.mediafire.com/file_premium/dzgpz65ze5uetfq/UBK-1_v#{version.dots_to_hyphens}_Silicon_Native.zip/file",
      verified: "thedataofkush.com/"
  name "Kush Audio UBK-1"
  desc "Legacy version of UBK-2"
  homepage "https://thehouseofkush.com/"

  pkg "UBK-1_v#{version.dots_to_hyphens}.pkg"

  uninstall pkgutil: "com.kushaudio.pkg.UBK-1*"
end
