class Nomos < Formula
  desc "Zero-trust control plane for AI agent side effects"
  homepage "https://github.com/safe-agentic-world/nomos"
  version "0.4.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/safe-agentic-world/nomos/releases/download/v0.4.0/nomos-darwin-arm64.tar.gz"
      sha256 "0839e527b6a1901d076dd63995f778123903c0a739e583812bf81f7b86541bf3"
    else
      url "https://github.com/safe-agentic-world/nomos/releases/download/v0.4.0/nomos-darwin-amd64.tar.gz"
      sha256 "f94c291fa9e02a4e8063649916f0f58b946efbc0b4d13b97712e516b722393b8"
    end
  end

  def install
    bin.install "nomos"
  end

  test do
    assert_match "version=", shell_output("#{bin}/nomos version")
  end
end
