class Nomos < Formula
  desc "Deny-wins policy hook for Claude Code and Codex"
  homepage "https://github.com/safe-agentic-world/nomos"
  version "0.19.3"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/safe-agentic-world/nomos/releases/download/v0.19.3/nomos-darwin-arm64.tar.gz"
      sha256 "d9632801616abccfc9e0623e3e4d7a56a0f9970bba62e4e9d9c3e547204976e6"
    else
      url "https://github.com/safe-agentic-world/nomos/releases/download/v0.19.3/nomos-darwin-amd64.tar.gz"
      sha256 "c5351d39e7388bddb57ef1ba84dffcc7b65acc3aba9d3eaf4a877458c37c63ed"
    end
  end

  def install
    bin.install "nomos"
  end

  test do
    assert_match "version=", shell_output("#{bin}/nomos version")
  end
end
