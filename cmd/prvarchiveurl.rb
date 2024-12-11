# frozen_string_literal: true

require "fileutils"
require "json"

module Homebrew
  module Cmd
    class PrvarchiveurlCmd < AbstractCommand
      cmd_args do
        usage_banner "`prvarchiveurl` --url 'http://some-url'"
        description  <<~EOS
          Use this to configure the HTTP/HTTPS server container your installer archive. The directory listing should mirror what is cask folder.\n
          Example: http://your-server.url/CompanyName/installer_name_v130.dmg
        EOS
        flag "--url=",
             description: "URL begin with http or https, exmaple: http://myserver.lan"
        named_args max: 1
      end

      def run
        json_dir = "#{ENV.fetch("HOMEBREW_PREFIX")}/etc/resonative/homebrew-proaudio/"
        json_path = "#{ENV.fetch("HOMEBREW_PREFIX")}/etc/resonative/homebrew-proaudio/prvinstallerhelper.json"
        json_template = { server: "http://not_configured.lan" }

        # If directory does not exist, create it
        FileUtils.mkdir_p(json_dir) unless File.directory?(json_dir)

        # If json file does not exist, create it
        unless File.exist?(json_path)
          File.write(json_path, json_template.to_json)
          puts "* prvinstallerhelper.json does not exist, created in #{json_path}"
        end

        # Read the json file
        json_data = JSON.parse(File.read(json_path))

        # if user provides an url as argument
        if args.url
          if args.url.start_with?("http")
            json_data["server"] = args.url.chomp("/")
            File.write(json_path, JSON.pretty_generate(json_data))
            puts "* Server URL has been updated to #{json_data["server"]}"
          else
            puts "* It appears the URL does not start with 'http'. Please retry."
          end
        else
          puts "* Server URL is #{json_data["server"]}"
        end

        # Add test in future (ping the server, retreive http code?)
      end
    end
  end
end
