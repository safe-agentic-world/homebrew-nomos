class Nomos < Formula
  desc "Zero-trust control plane for AI agent side effects"
  homepage "https://github.com/safe-agentic-world/nomos"
  version "0.9.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/safe-agentic-world/nomos/releases/download/v0.9.2/nomos-darwin-arm64.tar.gz"
      sha256 "7fadee9920bae2ea55ae2ecea1d3407b6a134460523cd1ff9fe1a736a6b90880"
    else
      url "https://github.com/safe-agentic-world/nomos/releases/download/v0.9.2/nomos-darwin-amd64.tar.gz"
      sha256 "0b8487868426b8b07e536f4eb7ebb5a5f34223b3751ab996147b2f9aca61c68a"
    end
  end

  def install
    bin.install "nomos"
  end

  test do
    assert_match "version=", shell_output("#{bin}/nomos version")
  end
end
