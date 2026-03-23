class Nomos < Formula
  desc "Zero-trust control plane for AI agent side effects"
  homepage "https://github.com/safe-agentic-world/nomos"
  version "0.6.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/safe-agentic-world/nomos/releases/download/v0.6.0/nomos-darwin-arm64.tar.gz"
      sha256 "da474e218f3a87689760e34a3d9c34d640e798a1d05ef29d423480fbb4aef47f"
    else
      url "https://github.com/safe-agentic-world/nomos/releases/download/v0.6.0/nomos-darwin-amd64.tar.gz"
      sha256 "e9e50283901add4b52e64dc67a9d0ab9c7e1203e5d30266314b149fe123d739c"
    end
  end

  def install
    bin.install "nomos"
  end

  test do
    assert_match "version=", shell_output("#{bin}/nomos version")
  end
end
