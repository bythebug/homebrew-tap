cask "copycopied" do
  version "0.3.0"
  sha256 "3de1babe7f35a3c22a55a69534b3d8ed0168c51562d0642a9a57f3e94cd882dc"

  url "https://github.com/bythebug/copycopied/releases/download/v#{version}/CopyCopied.zip"
  name "CopyCopied"
  desc "Menu bar app that tells you when a camera card is safely copied and verified"
  homepage "https://github.com/bythebug/copycopied"

  depends_on macos: :sonoma

  app "CopyCopied.app"

  caveats <<~EOS
    CopyCopied is not notarized yet. Allow the first launch with:
      xattr -dr com.apple.quarantine /Applications/CopyCopied.app
  EOS
end
