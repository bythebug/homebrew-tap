cask "xterm-glass" do
  version "0.4"
  sha256 "f055be910e5b0676400db7f5505cc40a23e4a7a8f1b2711e9abc20e6796da661"

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
