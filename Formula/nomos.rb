class Nomos < Formula
  desc "Zero-trust control plane for AI agent side effects"
  homepage "https://github.com/safe-agentic-world/nomos"
  version "0.18.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/safe-agentic-world/nomos/releases/download/v0.18.0/nomos-darwin-arm64.tar.gz"
      sha256 "3389580813ef06c463b8d3cca54c4aeb8a2bbd182ba3c2433576927483cbdde9"
    else
      url "https://github.com/safe-agentic-world/nomos/releases/download/v0.18.0/nomos-darwin-amd64.tar.gz"
      sha256 "774b7946ffd6c2b171e5bc668694329f4af0634ceaa8990917dbd0fcfcb25f0a"
    end
  end

  def install
    bin.install "nomos"
  end

  test do
    assert_match "version=", shell_output("#{bin}/nomos version")
  end
end
