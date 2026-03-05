class Nomos < Formula
  desc "Zero-trust control plane for AI agent side effects"
  homepage "https://github.com/safe-agentic-world/nomos"
  version "0.2.4"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/safe-agentic-world/nomos/releases/download/v0.2.4/nomos-darwin-arm64.tar.gz"
      sha256 "e1eef91b1a87753c4405e5cce78ed6b86e93bfc2cd02a72f16a751b6be036beb"
    else
      url "https://github.com/safe-agentic-world/nomos/releases/download/v0.2.4/nomos-darwin-amd64.tar.gz"
      sha256 "82729f5c166f71c2dfe066582b8c584ece5129f656940387e24af2a8bda25c49"
    end
  end

  def install
    bin.install "nomos"
  end

  test do
    assert_match "version=", shell_output("#{bin}/nomos version")
  end
end
