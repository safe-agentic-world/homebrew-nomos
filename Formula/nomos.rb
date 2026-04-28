class Nomos < Formula
  desc "Zero-trust control plane for AI agent side effects"
  homepage "https://github.com/safe-agentic-world/nomos"
  version "0.8.3"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/safe-agentic-world/nomos/releases/download/v0.8.3/nomos-darwin-arm64.tar.gz"
      sha256 "c5b9c687299acd260024e377c1b06949583c4142089a6c50b2159da972e480cc"
    else
      url "https://github.com/safe-agentic-world/nomos/releases/download/v0.8.3/nomos-darwin-amd64.tar.gz"
      sha256 "eb4ab2d068d6e710d35bfb5316d7d59514ecc06cbdbdd9f8bc83e661bee7afef"
    end
  end

  def install
    bin.install "nomos"
  end

  test do
    assert_match "version=", shell_output("#{bin}/nomos version")
  end
end
