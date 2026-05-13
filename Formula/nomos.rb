class Nomos < Formula
  desc "Zero-trust control plane for AI agent side effects"
  homepage "https://github.com/safe-agentic-world/nomos"
  version "0.12.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/safe-agentic-world/nomos/releases/download/v0.12.1/nomos-darwin-arm64.tar.gz"
      sha256 "22c918c9a20d0a2581f55a629e76f78d7917e2d40333c6ef7b469bc0b07e0dae"
    else
      url "https://github.com/safe-agentic-world/nomos/releases/download/v0.12.1/nomos-darwin-amd64.tar.gz"
      sha256 "d31b26c3ec147c25b4991b959b49fcdc2c6e73a55a95f41380dd8945cc59d2d4"
    end
  end

  def install
    bin.install "nomos"
  end

  test do
    assert_match "version=", shell_output("#{bin}/nomos version")
  end
end
