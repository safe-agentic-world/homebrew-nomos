class Nomos < Formula
  desc "Zero-trust control plane for AI agent side effects"
  homepage "https://github.com/safe-agentic-world/nomos"
  version "0.19.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/safe-agentic-world/nomos/releases/download/v0.19.0/nomos-darwin-arm64.tar.gz"
      sha256 "5112875399f4793ea26db04c69a6c723ee60d2270a07a8c7a23b8d216986ece6"
    else
      url "https://github.com/safe-agentic-world/nomos/releases/download/v0.19.0/nomos-darwin-amd64.tar.gz"
      sha256 "53f573c359ceed7e800e01137ceaf9e2b9580669ef0962d9b4ece59638ff0364"
    end
  end

  def install
    bin.install "nomos"
  end

  test do
    assert_match "version=", shell_output("#{bin}/nomos version")
  end
end
