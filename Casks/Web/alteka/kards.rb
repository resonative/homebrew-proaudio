cask "kards" do
  version "1.3.1"
  sha256 "16026050b3dd4bba7e5bec0ee137b0844850b6037f836ef93459a11ac8df62ed"

  url "https://github.com/Alteka/Kards/releases/download/v#{version}/Kards-#{version}-mac-universal.pkg"
  name "Kards"
  desc "Video test card"
  homepage "https://alteka.solutions/kards"

  auto_updates false

  pkg "Kards-#{version}-mac-universal.pkg"

  uninstall quit:    "solutions.alteka.kards",
            pkgutil: "solutions.alteka.kards",
            delete:  "~/Library/Application Support/kards"
end
