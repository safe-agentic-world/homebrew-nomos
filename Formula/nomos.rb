class Nomos < Formula
  desc "Zero-trust control plane for AI agent side effects"
  homepage "https://github.com/safe-agentic-world/nomos"
  version "0.8.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/safe-agentic-world/nomos/releases/download/v0.8.1/nomos-darwin-arm64.tar.gz"
      sha256 "890098c69a33cf748f7b4cbd58ad0cfc84e55e8c88b20f681df7e3c2e02a4f0d"
    else
      url "https://github.com/safe-agentic-world/nomos/releases/download/v0.8.1/nomos-darwin-amd64.tar.gz"
      sha256 "a008f2d934c3f3db4a9c886d84b953927b614cc6f8ac7ea1fca42114effa6164"
    end
  end

  def install
    bin.install "nomos"
  end

  test do
    assert_match "version=", shell_output("#{bin}/nomos version")
  end
end
