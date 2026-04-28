class Nomos < Formula
  desc "Zero-trust control plane for AI agent side effects"
  homepage "https://github.com/safe-agentic-world/nomos"
  version "0.9.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/safe-agentic-world/nomos/releases/download/v0.9.1/nomos-darwin-arm64.tar.gz"
      sha256 "4f02d227ce724c9cb67635201de4273fd7e2fdb625bb2ec3be3248d6ef975599"
    else
      url "https://github.com/safe-agentic-world/nomos/releases/download/v0.9.1/nomos-darwin-amd64.tar.gz"
      sha256 "a689ee5eae384654c1004e703b158b9c11602ff0d3b803eb4a6b4beef9e93e18"
    end
  end

  def install
    bin.install "nomos"
  end

  test do
    assert_match "version=", shell_output("#{bin}/nomos version")
  end
end
