cask "govee-lights" do
  version "1.0"
  sha256 "1a65af48db78650843dc393be1552985bafe96cf1e3e1515a30f1c73fd261b06"

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
