class Nomos < Formula
  desc "Zero-trust control plane for AI agent side effects"
  homepage "https://github.com/safe-agentic-world/nomos"
  version "0.15.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/safe-agentic-world/nomos/releases/download/v0.15.0/nomos-darwin-arm64.tar.gz"
      sha256 "355da8087f670435cba973b601bf6fe7d24bd1ab60d1937309b87af0648a7f36"
    else
      url "https://github.com/safe-agentic-world/nomos/releases/download/v0.15.0/nomos-darwin-amd64.tar.gz"
      sha256 "05d87108276310b77048fbbf821bc1ffdc92b1a47163b82006be28e101645ce1"
    end
  end

  def install
    bin.install "nomos"
  end

  test do
    assert_match "version=", shell_output("#{bin}/nomos version")
  end
end
