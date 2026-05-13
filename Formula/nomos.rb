class Nomos < Formula
  desc "Zero-trust control plane for AI agent side effects"
  homepage "https://github.com/safe-agentic-world/nomos"
  version "0.12.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/safe-agentic-world/nomos/releases/download/v0.12.0/nomos-darwin-arm64.tar.gz"
      sha256 "81a3ddca24b0394b79a8315ba4dbf819cec45540850d904788b5ac4e79a8a5da"
    else
      url "https://github.com/safe-agentic-world/nomos/releases/download/v0.12.0/nomos-darwin-amd64.tar.gz"
      sha256 "2dc23de63a4371fd78c7fb6f4d07482e359f4b0c80ae337c001c35798c92fd68"
    end
  end

  def install
    bin.install "nomos"
  end

  test do
    assert_match "version=", shell_output("#{bin}/nomos version")
  end
end
