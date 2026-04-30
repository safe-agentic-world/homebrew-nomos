class Nomos < Formula
  desc "Zero-trust control plane for AI agent side effects"
  homepage "https://github.com/safe-agentic-world/nomos"
  version "0.11.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/safe-agentic-world/nomos/releases/download/v0.11.0/nomos-darwin-arm64.tar.gz"
      sha256 "7c93546304ed34fc8e89fa4bdfb861f113fc90c7b1be696ffe5ba806b7213b6e"
    else
      url "https://github.com/safe-agentic-world/nomos/releases/download/v0.11.0/nomos-darwin-amd64.tar.gz"
      sha256 "3466bd88be1685770db51c879e6afee2cf0f837b3f014879e044d1d0010aaac4"
    end
  end

  def install
    bin.install "nomos"
  end

  test do
    assert_match "version=", shell_output("#{bin}/nomos version")
  end
end
