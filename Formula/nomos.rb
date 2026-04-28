class Nomos < Formula
  desc "Zero-trust control plane for AI agent side effects"
  homepage "https://github.com/safe-agentic-world/nomos"
  version "0.8.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/safe-agentic-world/nomos/releases/download/v0.8.2/nomos-darwin-arm64.tar.gz"
      sha256 "75be46bff98c39069eb9314c8d43764ea434ae824973d7ce65ca3dd5b41f64f9"
    else
      url "https://github.com/safe-agentic-world/nomos/releases/download/v0.8.2/nomos-darwin-amd64.tar.gz"
      sha256 "393e90c00848b98e43d4f3804372c9140619bddf3768985470970c77956b2cae"
    end
  end

  def install
    bin.install "nomos"
  end

  test do
    assert_match "version=", shell_output("#{bin}/nomos version")
  end
end
