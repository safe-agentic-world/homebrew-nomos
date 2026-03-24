class Nomos < Formula
  desc "Zero-trust control plane for AI agent side effects"
  homepage "https://github.com/safe-agentic-world/nomos"
  version "0.7.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/safe-agentic-world/nomos/releases/download/v0.7.0/nomos-darwin-arm64.tar.gz"
      sha256 "78b302d4cfd18a98597b5f51e2ca48a2bce94f2f27debb2ec51e9577b6f0cb8f"
    else
      url "https://github.com/safe-agentic-world/nomos/releases/download/v0.7.0/nomos-darwin-amd64.tar.gz"
      sha256 "6a39d0f5ab9c28e37ecb38e95afbd8fe66cfa0f8659ac1e49b6885d423883829"
    end
  end

  def install
    bin.install "nomos"
  end

  test do
    assert_match "version=", shell_output("#{bin}/nomos version")
  end
end
