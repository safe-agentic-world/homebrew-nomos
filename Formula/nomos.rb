class Nomos < Formula
  desc "Zero-trust control plane for AI agent side effects"
  homepage "https://github.com/safe-agentic-world/nomos"
  version "0.11.6"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/safe-agentic-world/nomos/releases/download/v0.11.6/nomos-darwin-arm64.tar.gz"
      sha256 "22236e4055de0700591a80418cc319855fec6cfcd7f5fdc3747c873a40a73e38"
    else
      url "https://github.com/safe-agentic-world/nomos/releases/download/v0.11.6/nomos-darwin-amd64.tar.gz"
      sha256 "b4117b83a3f5eeb00a4df0da474b9f54133a14167c53368324ec06396eccaa10"
    end
  end

  def install
    bin.install "nomos"
  end

  test do
    assert_match "version=", shell_output("#{bin}/nomos version")
  end
end
