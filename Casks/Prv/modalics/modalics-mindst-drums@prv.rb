cask "modalics-mindst-drums@prv" do
  def self.prv_archive_url
    json_path = "#{ENV.fetch("HOMEBREW_PREFIX")}/etc/resonative/homebrew-proaudio/prvinstallerhelper.json"
    data = JSON.parse(File.read(json_path))
    data["server"] ||= "http://not_configured.lan"
  end

  version "1.2.0"
  sha256 "5b55eaaf4dc5adee504243064934151584ee866c586316cb31a336b517ac5e75"

  url "#{prv_archive_url}/m/modalics-mindst-drums/v#{version}/MINDst%20Drums.pkg",
      verified: prv_archive_url.to_s
  name "Modalics MINDst Drums"
  desc "Drum virtual instrument"
  homepage "https://www.modalics.com/products/mindst-drums"

  auto_updates false

  pkg "MINDst Drums.pkg"

  uninstall pkgutil: "com.Modalics.MINDst-Drums.*"
end
