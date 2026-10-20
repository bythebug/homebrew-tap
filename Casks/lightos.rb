cask "lightos" do
  version "1.2"
  sha256 "f73b61e15afa01f84847ae51bb6985b2fae2123fc7e50fa69bb279ef781a083f"

  url "https://github.com/bythebug/lightos/releases/download/v#{version}/LightOS.zip"
  name "LightOS"
  desc "Menu bar app to control Govee lights over your local Wi-Fi"
  homepage "https://github.com/bythebug/lightos"

  depends_on macos: :sonoma

  app "LightOS.app"

  caveats <<~EOS
    LightOS is not notarized yet. Allow the first launch with:
      xattr -dr com.apple.quarantine /Applications/LightOS.app

    Turn on "LAN Control" for each light in the Govee Home app first.
  EOS
end
