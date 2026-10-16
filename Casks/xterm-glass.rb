cask "xterm-glass" do
  version "0.2"
  sha256 "960288c7b77055859b9171d2839dc58464c1f8667ad20d669f096a7b02cc69b5"

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
