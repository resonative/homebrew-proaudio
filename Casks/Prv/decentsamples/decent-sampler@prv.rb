cask "decent-sampler@prv" do
  class << self
    define_method(:prv_archive_url) do
      json_path = "#{ENV.fetch("HOMEBREW_PREFIX")}/etc/resonative/homebrew-proaudio/prvinstallerhelper.json"
      data = JSON.parse(File.read(json_path))
      data["server"] ||= "http://not_configured.lan"
    end
  end

  version "1.14.1"
  sha256 "957474b7228e90abe8c24fb11f0e3b3fd11557e4befc956df701ddf8233035b5"

  url "#{prv_archive_url}/d/decent-sampler/v#{version}/Decent_Sampler-#{version}-Mac.zip",
      verified: prv_archive_url.to_s
  name "Decent Sampler"
  desc "Sample player for decentsamples.com"
  homepage "https://www.decentsamples.com/product/decent-sampler-plugin/"

  auto_updates false

  pkg "Decent_Sampler-#{version}-Mac.pkg"

  uninstall pkgutil: "ly.decided.DecentSampler.*"
end
