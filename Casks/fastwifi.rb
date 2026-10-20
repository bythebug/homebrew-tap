cask "fastwifi" do
  version "1.0"
  sha256 "d9f84819ad6659a14fc6618d3b4040eaae0e98a22119a6276cba5f4919ccda26"

  url "https://github.com/bythebug/fastwifi/releases/download/v#{version}/FastWifi.zip"
  name "FastWifi"
  desc "Menu bar switch that stops Wi-Fi lag spikes from the AirDrop/Continuity radio"
  homepage "https://github.com/bythebug/fastwifi"

  depends_on macos: :sonoma

  app "FastWifi.app"

  caveats <<~EOS
    FastWifi is not notarized yet. Allow the first launch with:
      xattr -dr com.apple.quarantine /Applications/FastWifi.app
  EOS
end
