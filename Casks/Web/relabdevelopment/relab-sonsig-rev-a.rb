cask "relab-sonsig-rev-a" do
  version "1.1.2"
  sha256 "e047fcdceff45a304697048f7f08d69204a3b0d06e062be9ef39406a5c07dc96"

  url "https://relab-software-downloads.s3.us-west-1.amazonaws.com/products/Sonsig_REV-A/Mac/Sonsig_Rev-A_Mac_v#{version}.pkg.zip",
      verified: "relab-software-downloads.s3.us-west-1.amazonaws.com/"
  name "Relab Development Sonsig Rev-A"
  desc "Algorithmic reverb"
  homepage "https://relabdevelopment.com/sonsig-rev-a/"

  auto_updates false

  pkg "Sonsig_Rev-A_Mac_v#{version}.pkg"

  uninstall pkgutil: [
    "com.relab.pkg.SonsigRev-AData",
    "com.relab.pkg.SonsigRev-APlugin",
  ]
end
