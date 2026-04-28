class Nomos < Formula
  desc "Zero-trust control plane for AI agent side effects"
  homepage "https://github.com/safe-agentic-world/nomos"
  version "0.9.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/safe-agentic-world/nomos/releases/download/v0.9.0/nomos-darwin-arm64.tar.gz"
      sha256 "d75a87eedf575bac755dfccaee40ac6c8572fe1c40c87ee0478916bbe122f930"
    else
      url "https://github.com/safe-agentic-world/nomos/releases/download/v0.9.0/nomos-darwin-amd64.tar.gz"
      sha256 "5794f5ffc34e6884419155b96b0e91a8b32ce303eaddd15d414114a5fa527b29"
    end
  end

  def install
    bin.install "nomos"
  end

  test do
    assert_match "version=", shell_output("#{bin}/nomos version")
  end
end
