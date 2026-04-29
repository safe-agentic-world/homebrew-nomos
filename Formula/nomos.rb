class Nomos < Formula
  desc "Zero-trust control plane for AI agent side effects"
  homepage "https://github.com/safe-agentic-world/nomos"
  version "0.9.4"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/safe-agentic-world/nomos/releases/download/v0.9.4/nomos-darwin-arm64.tar.gz"
      sha256 "abd0579623578f53173aca8ffa41d987959d8d1167dad25323309ef43c6e70ec"
    else
      url "https://github.com/safe-agentic-world/nomos/releases/download/v0.9.4/nomos-darwin-amd64.tar.gz"
      sha256 "653bbb42d1a0ae3de29eedb00b7a8dfc805eac6c6b51d1e032d8a0ad07affc0e"
    end
  end

  def install
    bin.install "nomos"
  end

  test do
    assert_match "version=", shell_output("#{bin}/nomos version")
  end
end
