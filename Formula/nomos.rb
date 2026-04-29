class Nomos < Formula
  desc "Zero-trust control plane for AI agent side effects"
  homepage "https://github.com/safe-agentic-world/nomos"
  version "0.9.3"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/safe-agentic-world/nomos/releases/download/v0.9.3/nomos-darwin-arm64.tar.gz"
      sha256 "2c621d1ad49e385e692b957e39e21140350a48f3685848c18f852d694a444d04"
    else
      url "https://github.com/safe-agentic-world/nomos/releases/download/v0.9.3/nomos-darwin-amd64.tar.gz"
      sha256 "e5e5a7667797b3cdf0469556a895eccd69ef1294470451710e118501601cfeda"
    end
  end

  def install
    bin.install "nomos"
  end

  test do
    assert_match "version=", shell_output("#{bin}/nomos version")
  end
end
