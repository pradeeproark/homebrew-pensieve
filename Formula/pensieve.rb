# Homebrew Formula for Pensieve
#
# This file should be placed in the `pradeeproark/homebrew-pensieve` repository
# at the path: Formula/pensieve.rb
#
# To use:
# 1. Create repository: pradeeproark/homebrew-pensieve
# 2. Add this file to Formula/pensieve.rb
# 3. Update VERSION, URL, and SHA256 after each release
# 4. Users install with: brew tap pradeeproark/pensieve && brew install pensieve

class Pensieve < Formula
  desc "Memory recording tool for Claude Code agents"
  homepage "https://github.com/pradeeproark/pensieve"
  version "0.4.1"

  # Download pre-built binary from GitHub Releases
  url "https://github.com/pradeeproark/pensieve/releases/download/v0.4.1/pensieve-0.4.1-macos"
  sha256 "5a204f61c8e1a6ddacfeaa0266078d44a4f9081ff476fa3133d9be3b030ab21e"

  # No dependencies - it's a self-contained binary

  def install
    # Rename the downloaded file to 'pensieve' and install to bin
    bin.install "pensieve-0.4.1-macos" => "pensieve"
  end

  test do
    # Test that the executable runs and outputs version
    assert_match "pensieve, version #{version}", shell_output("#{bin}/pensieve --version")
  end
end
