class Pensieve < Formula
  desc "Memory recording tool for AI agents"
  homepage "https://github.com/pradeeproark/pensieve"
  version "0.1.0"

  url "https://github.com/pradeeproark/pensieve/releases/download/v0.1.0/pensieve-0.1.0-macos"
  sha256 "b771c4032cb7946ab345c0547918e279a0320c37f0bea177ddc69726c33940e0"

  # No dependencies - it's a self-contained binary

  def install
    # Rename the downloaded file to 'pensieve' and install to bin
    bin.install "pensieve-0.1.0-macos" => "pensieve"
  end

  test do
    # Test that the executable runs and outputs version
    assert_match "pensieve, version #{version}", shell_output("#{bin}/pensieve --version")
  end
end
