class Nomos < Formula
  desc "Zero-trust control plane for AI agent side effects"
  homepage "https://github.com/safe-agentic-world/nomos"
  version "0.9.5"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/safe-agentic-world/nomos/releases/download/v0.9.5/nomos-darwin-arm64.tar.gz"
      sha256 "a62aa78d438569d6aa253643af6ba1fe92088ff7e99677bd0af6504c88b4a571"
    else
      url "https://github.com/safe-agentic-world/nomos/releases/download/v0.9.5/nomos-darwin-amd64.tar.gz"
      sha256 "1edcd8ea10b2b86e25a7570ca612c9cd650d825a702aadb6769de069c9e757a2"
    end
  end

  def install
    bin.install "nomos"
  end

  test do
    assert_match "version=", shell_output("#{bin}/nomos version")
  end
end
