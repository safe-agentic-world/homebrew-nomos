class Nomos < Formula
  desc "Zero-trust control plane for AI agent side effects"
  homepage "https://github.com/safe-agentic-world/nomos"
  version "0.17.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/safe-agentic-world/nomos/releases/download/v0.17.0/nomos-darwin-arm64.tar.gz"
      sha256 "9e6c4d87dbe40525b2b3f4af8502abe98cf5c55f7446cadb0ac17764587481be"
    else
      url "https://github.com/safe-agentic-world/nomos/releases/download/v0.17.0/nomos-darwin-amd64.tar.gz"
      sha256 "b581f50f95e5d5ccdd5a1c493993cbad4076d1fb991130f6d7bcac57d5e11b85"
    end
  end

  def install
    bin.install "nomos"
  end

  test do
    assert_match "version=", shell_output("#{bin}/nomos version")
  end
end
