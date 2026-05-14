class Nomos < Formula
  desc "Zero-trust control plane for AI agent side effects"
  homepage "https://github.com/safe-agentic-world/nomos"
  version "0.13.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/safe-agentic-world/nomos/releases/download/v0.13.1/nomos-darwin-arm64.tar.gz"
      sha256 "762e2271388ed0637e9204216fd77a6575764cfb089b79a4d7af70b696385051"
    else
      url "https://github.com/safe-agentic-world/nomos/releases/download/v0.13.1/nomos-darwin-amd64.tar.gz"
      sha256 "441c8f2c7c4ac32cd787bc1eb30e58c3df7d1ce1fbcbb2d94d6e1e2dac8f2735"
    end
  end

  def install
    bin.install "nomos"
  end

  test do
    assert_match "version=", shell_output("#{bin}/nomos version")
  end
end
