class Nomos < Formula
  desc "Zero-trust control plane for AI agent side effects"
  homepage "https://github.com/safe-agentic-world/nomos"
  version "0.3.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/safe-agentic-world/nomos/releases/download/v0.3.2/nomos-darwin-arm64.tar.gz"
      sha256 "b0f22dbfbd9c7a67c9a071dae51f175ced8ea64e6cfdfd7c8d9204f819d5fe12"
    else
      url "https://github.com/safe-agentic-world/nomos/releases/download/v0.3.2/nomos-darwin-amd64.tar.gz"
      sha256 "c9f564bf7cb9f653006b5459a6ef846adc8fef0b3c16b16ec47b8169b430c94d"
    end
  end

  def install
    bin.install "nomos"
  end

  test do
    assert_match "version=", shell_output("#{bin}/nomos version")
  end
end
