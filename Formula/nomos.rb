class Nomos < Formula
  desc "Zero-trust control plane for AI agent side effects"
  homepage "https://github.com/safe-agentic-world/nomos"
  version "0.2.5"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/safe-agentic-world/nomos/releases/download/v0.2.5/nomos-darwin-arm64.tar.gz"
      sha256 "d64672c27662ab394dcf2ec042fd1339b070a1abde4a168741e901353358df85"
    else
      url "https://github.com/safe-agentic-world/nomos/releases/download/v0.2.5/nomos-darwin-amd64.tar.gz"
      sha256 "6db87ae178b37435621fd579c44859605808823e15582eea2131658aa2d7585c"
    end
  end

  def install
    bin.install "nomos"
  end

  test do
    assert_match "version=", shell_output("#{bin}/nomos version")
  end
end
