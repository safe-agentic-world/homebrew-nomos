class Nomos < Formula
  desc "Zero-trust control plane for AI agent side effects"
  homepage "https://github.com/safe-agentic-world/nomos"
  version "0.10.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/safe-agentic-world/nomos/releases/download/v0.10.1/nomos-darwin-arm64.tar.gz"
      sha256 "1a589edb9c4db683846cd06fb6be06e3173d05e9e451baf5e2c908b5ec193c7e"
    else
      url "https://github.com/safe-agentic-world/nomos/releases/download/v0.10.1/nomos-darwin-amd64.tar.gz"
      sha256 "acb21b1205ece90da099bb07e5fe90d3093e76338e693cbee9848925311375c4"
    end
  end

  def install
    bin.install "nomos"
  end

  test do
    assert_match "version=", shell_output("#{bin}/nomos version")
  end
end
