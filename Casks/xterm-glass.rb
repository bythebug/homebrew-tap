cask "xterm-glass" do
  version "0.3"
  sha256 "3e2035ef832814153b1690a3ba647c3d94223f7ca5539cd88ceaff3ca41c90e6"

  url "https://github.com/bythebug/XTerm/releases/download/v#{version}/XTerm.zip"
  name "XTerm"
  desc "Terminal with Apple's Liquid Glass look"
  homepage "https://github.com/bythebug/XTerm"

  depends_on macos: :tahoe

  app "XTerm.app"

  caveats <<~EOS
    XTerm is not notarized yet. Allow the first launch with:
      xattr -dr com.apple.quarantine /Applications/XTerm.app
  EOS
end
