class Nomos < Formula
  desc "Zero-trust control plane for AI agent side effects"
  homepage "https://github.com/safe-agentic-world/nomos"
  version "0.11.5"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/safe-agentic-world/nomos/releases/download/v0.11.5/nomos-darwin-arm64.tar.gz"
      sha256 "ab26fe5097d102959a0bc147590507822850288adf3afded5aeeee93c1814259"
    else
      url "https://github.com/safe-agentic-world/nomos/releases/download/v0.11.5/nomos-darwin-amd64.tar.gz"
      sha256 "2e7a81041262d3cd26e4645cf7782a73425c5b099ceda0c9e916b6acb0b951e4"
    end
  end

  def install
    bin.install "nomos"
  end

  test do
    assert_match "version=", shell_output("#{bin}/nomos version")
  end
end
