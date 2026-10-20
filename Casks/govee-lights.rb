cask "govee-lights" do
  version "1.1"
  sha256 "bce2d67980812d4e6278893995bdccdc54725f58df1445e6a539b7d2d0bf7674"

  url "https://github.com/bythebug/govee-lights/releases/download/v#{version}/GoveeLights.zip"
  name "Govee Lights"
  desc "Menu bar app to control Govee lights over your local Wi-Fi"
  homepage "https://github.com/bythebug/govee-lights"

  depends_on macos: :sonoma

  app "Govee Lights.app"

  caveats <<~EOS
    Govee Lights is not notarized yet. Allow the first launch with:
      xattr -dr com.apple.quarantine "/Applications/Govee Lights.app"

    Turn on "LAN Control" for each light in the Govee Home app first.
  EOS
end
