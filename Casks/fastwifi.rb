cask "fastwifi" do
  version "1.1"
  sha256 "6e33cb23779b6dac51c125144844e6e89ae5c077da30f3cbf2ab6a7c2ca86ea9"

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
