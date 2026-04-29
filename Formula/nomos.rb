class Nomos < Formula
  desc "Zero-trust control plane for AI agent side effects"
  homepage "https://github.com/safe-agentic-world/nomos"
  version "0.9.6"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/safe-agentic-world/nomos/releases/download/v0.9.6/nomos-darwin-arm64.tar.gz"
      sha256 "8bd008b59fc7e8025d4e7f6f039f11653fdd399b9674750d0febe3bc0ee2acc1"
    else
      url "https://github.com/safe-agentic-world/nomos/releases/download/v0.9.6/nomos-darwin-amd64.tar.gz"
      sha256 "bf21c6f89b6f62801c10b8aa4ba8385d0ed237af142bf6018e0080e1a256ca96"
    end
  end

  def install
    bin.install "nomos"
  end

  test do
    assert_match "version=", shell_output("#{bin}/nomos version")
  end
end
