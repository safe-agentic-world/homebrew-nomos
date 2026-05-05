class Nomos < Formula
  desc "Zero-trust control plane for AI agent side effects"
  homepage "https://github.com/safe-agentic-world/nomos"
  version "0.11.4"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/safe-agentic-world/nomos/releases/download/v0.11.4/nomos-darwin-arm64.tar.gz"
      sha256 "6e1ad76a6389487cf327e86dbbe9c5c7f55e0cde4ca5de428adc4aa3682968f7"
    else
      url "https://github.com/safe-agentic-world/nomos/releases/download/v0.11.4/nomos-darwin-amd64.tar.gz"
      sha256 "812aa3263799e2428938afae6ce3032903abc21c5a095c921d8f29c1474d51ef"
    end
  end

  def install
    bin.install "nomos"
  end

  test do
    assert_match "version=", shell_output("#{bin}/nomos version")
  end
end
