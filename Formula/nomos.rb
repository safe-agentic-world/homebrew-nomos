class Nomos < Formula
  desc "Zero-trust control plane for AI agent side effects"
  homepage "https://github.com/safe-agentic-world/nomos"
  version "0.10.3"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/safe-agentic-world/nomos/releases/download/v0.10.3/nomos-darwin-arm64.tar.gz"
      sha256 "662fc57e5a612c5a00a6a7dc04e06854a30d62e541ad88663c96fb5ee543fff5"
    else
      url "https://github.com/safe-agentic-world/nomos/releases/download/v0.10.3/nomos-darwin-amd64.tar.gz"
      sha256 "dcd2488a9e7eb23bdd4f8d92d3a5a148ea2a1d3d95621147dbb6a5c19312efd2"
    end
  end

  def install
    bin.install "nomos"
  end

  test do
    assert_match "version=", shell_output("#{bin}/nomos version")
  end
end
