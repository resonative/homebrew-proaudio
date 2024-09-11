require "net/http"

cask "klevgrand-helper" do
  module Utils
    def self.url_from_json
      json_url = URI("https://klevgrand.com/api/downloads/getURL/66431f6701569a70804d6ec1?u=64b26108753d76fecbc072c8")

      response = Net::HTTP.get(json_url)
      data = JSON.parse(response)

      data["url"]
    end
  end
  version :latest
  sha256 :no_check

  url "#{Utils.url_from_json}",
      verified: "klevdata.s3-accelerate.amazonaws.com/"
  name "Klevgrand Helper"
  desc "Klevgrand plugin manager"
  homepage "https://klevgrand.com/"

  app "Klevgrand Helper.app"

  uninstall launchctl: "com.Klevgrand.Helper.PrivTool",
            quit:      "com.Klevgrand.Helper",
            delete:    [
              "~/Library/Caches/com.Klevgrand.Helper/",
              "~/Library/HTTPStorages/com.Klevgrand.Helper/",
            ]
end
