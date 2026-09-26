class Nomos < Formula
  desc "Zero-trust control plane for AI agent side effects"
  homepage "https://github.com/safe-agentic-world/nomos"
  version "0.16.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/safe-agentic-world/nomos/releases/download/v0.16.0/nomos-darwin-arm64.tar.gz"
      sha256 "779bdd68349cf7b071cdb6e8914834d8004db5d2647bec241c882b3d99e7e4b6"
    else
      url "https://github.com/safe-agentic-world/nomos/releases/download/v0.16.0/nomos-darwin-amd64.tar.gz"
      sha256 "fadc934797f3fe6b52f45ff4860c56dd6297f3b3c5714a6af9c15ef7913a79eb"
    end
  end

  def install
    bin.install "nomos"
  end

  test do
    assert_match "version=", shell_output("#{bin}/nomos version")
  end
end
