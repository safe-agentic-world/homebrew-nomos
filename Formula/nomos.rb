class Nomos < Formula
  desc "Zero-trust control plane for AI agent side effects"
  homepage "https://github.com/safe-agentic-world/nomos"
  version "0.11.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/safe-agentic-world/nomos/releases/download/v0.11.1/nomos-darwin-arm64.tar.gz"
      sha256 "60e726aede368a4173043a0c853bd83270a49b96a31014801fc6bcd5446b69cf"
    else
      url "https://github.com/safe-agentic-world/nomos/releases/download/v0.11.1/nomos-darwin-amd64.tar.gz"
      sha256 "ee2e7cdc7cc24103cb9699e8b788badf41ff080ff4e8346aded89eb41a353181"
    end
  end

  def install
    bin.install "nomos"
  end

  test do
    assert_match "version=", shell_output("#{bin}/nomos version")
  end
end
