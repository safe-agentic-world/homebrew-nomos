class Nomos < Formula
  desc "Zero-trust control plane for AI agent side effects"
  homepage "https://github.com/safe-agentic-world/nomos"
  version "0.13.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/safe-agentic-world/nomos/releases/download/v0.13.0/nomos-darwin-arm64.tar.gz"
      sha256 "b1c47620d2a636ab0c3f1b346e7315cf6b1e29cb295dfc06ba185f7afd821ec4"
    else
      url "https://github.com/safe-agentic-world/nomos/releases/download/v0.13.0/nomos-darwin-amd64.tar.gz"
      sha256 "05db9f2ace1ef31e4d856109bcafdc3bccdf4f587c152fb2e46fb7c7af08829d"
    end
  end

  def install
    bin.install "nomos"
  end

  test do
    assert_match "version=", shell_output("#{bin}/nomos version")
  end
end
