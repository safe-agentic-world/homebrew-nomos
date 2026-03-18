class Nomos < Formula
  desc "Zero-trust control plane for AI agent side effects"
  homepage "https://github.com/safe-agentic-world/nomos"
  version "0.3.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/safe-agentic-world/nomos/releases/download/v0.3.1/nomos-darwin-arm64.tar.gz"
      sha256 "98528a76877b9e293c04dc38d4f383fc84ae44fb0a4c3a2e56a87ed2a21ac76b"
    else
      url "https://github.com/safe-agentic-world/nomos/releases/download/v0.3.1/nomos-darwin-amd64.tar.gz"
      sha256 "e040c3d8473eeee49b6c1a4fbd9c0b8d42e5a86e680e24c1acdce831e53b8b87"
    end
  end

  def install
    bin.install "nomos"
  end

  test do
    assert_match "version=", shell_output("#{bin}/nomos version")
  end
end
