cask "decent-sampler@prv" do
  class << self
    define_method(:prv_archive_url) do
      json_path = "#{ENV.fetch("HOMEBREW_PREFIX")}/etc/resonative/homebrew-proaudio/prvinstallerhelper.json"
      data = JSON.parse(File.read(json_path))
      data["server"] ||= "http://not_configured.lan"
    end
  end

  version "1.23.5"
  sha256 "9a688a08fcaf22c9d397de4dc9aa8d9f807f7e97d7390d5d5f1b5b2e45b891b5"

  url "#{prv_archive_url}/d/decent-sampler/v#{version}/Decent_Sampler-#{version}-Mac.zip",
      verified: prv_archive_url.to_s
  name "Decent Sampler"
  desc "Sample player for decentsamples.com"
  homepage "https://www.decentsamples.com/product/decent-sampler-plugin/"

  auto_updates false

  pkg "Decent_Sampler-#{version}-Mac.pkg"

  uninstall pkgutil: "ly.decided.DecentSampler.*"
end
