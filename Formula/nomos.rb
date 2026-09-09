class Nomos < Formula
  desc "Zero-trust control plane for AI agent side effects"
  homepage "https://github.com/safe-agentic-world/nomos"
  version "0.13.3"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/safe-agentic-world/nomos/releases/download/v0.13.3/nomos-darwin-arm64.tar.gz"
      sha256 "cd52b1cb17a497664bb2d8abfe7a1578828a2b2ad0cf3414a04aeb3aca0a0f37"
    else
      url "https://github.com/safe-agentic-world/nomos/releases/download/v0.13.3/nomos-darwin-amd64.tar.gz"
      sha256 "1570174e5d9d6930434ae2d044a67f999ace18eb65cecec6f39a63a59b510866"
    end
  end

  def install
    bin.install "nomos"
  end

  test do
    assert_match "version=", shell_output("#{bin}/nomos version")
  end
end
