cask "xterm-glass" do
  version "0.1"
  sha256 "3307f5c3d1cae2624b768dd87f144929e11fc72d7e558479d2d7c2fa92fadfb8"

  url "https://github.com/bythebug/XTerm/releases/download/v#{version}/XTerm.zip"
  name "XTerm"
  desc "Terminal with Apple's Liquid Glass look"
  homepage "https://github.com/bythebug/XTerm"

  depends_on macos: ">= :tahoe"

  app "XTerm.app"

  caveats <<~EOS
    XTerm is not notarized yet. Allow the first launch with:
      xattr -dr com.apple.quarantine /Applications/XTerm.app
  EOS
end
