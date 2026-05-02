class Nomos < Formula
  desc "Zero-trust control plane for AI agent side effects"
  homepage "https://github.com/safe-agentic-world/nomos"
  version "0.11.3"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/safe-agentic-world/nomos/releases/download/v0.11.3/nomos-darwin-arm64.tar.gz"
      sha256 "a64139217fcf9dac675cde44d7df537c16acb524546a180f9b325a56fa732608"
    else
      url "https://github.com/safe-agentic-world/nomos/releases/download/v0.11.3/nomos-darwin-amd64.tar.gz"
      sha256 "ec22b3e1276aa028793d47eb6d3443550f6764ad1a89926653cd67ef4f0ca752"
    end
  end

  def install
    bin.install "nomos"
  end

  test do
    assert_match "version=", shell_output("#{bin}/nomos version")
  end
end
