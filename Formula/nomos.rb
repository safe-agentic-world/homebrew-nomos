class Nomos < Formula
  desc "Zero-trust control plane for AI agent side effects"
  homepage "https://github.com/safe-agentic-world/nomos"
  version "0.6.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/safe-agentic-world/nomos/releases/download/v0.6.1/nomos-darwin-arm64.tar.gz"
      sha256 "40a7cbf8072a59bcce3234869d0e75de90f9546b5b5f8d795ac04b2cf3831381"
    else
      url "https://github.com/safe-agentic-world/nomos/releases/download/v0.6.1/nomos-darwin-amd64.tar.gz"
      sha256 "7e1263c50dc956c89f75232772dad18bc92753a3b37534bd4c04fe2e86604ffe"
    end
  end

  def install
    bin.install "nomos"
  end

  test do
    assert_match "version=", shell_output("#{bin}/nomos version")
  end
end
