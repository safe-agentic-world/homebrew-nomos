class Nomos < Formula
  desc "Zero-trust control plane for AI agent side effects"
  homepage "https://github.com/safe-agentic-world/nomos"
  version "0.13.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/safe-agentic-world/nomos/releases/download/v0.13.2/nomos-darwin-arm64.tar.gz"
      sha256 "12514af3492d41451f69d8b4ea62bad0c6f9bf5713522a0d97a226310fd2b3b3"
    else
      url "https://github.com/safe-agentic-world/nomos/releases/download/v0.13.2/nomos-darwin-amd64.tar.gz"
      sha256 "328477f3a613c069747385faae2b199032d1c90aeafaba67aae754ee59016870"
    end
  end

  def install
    bin.install "nomos"
  end

  test do
    assert_match "version=", shell_output("#{bin}/nomos version")
  end
end
