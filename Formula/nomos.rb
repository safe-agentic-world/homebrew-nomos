class Nomos < Formula
  desc "Zero-trust control plane for AI agent side effects"
  homepage "https://github.com/safe-agentic-world/nomos"
  version "0.14.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/safe-agentic-world/nomos/releases/download/v0.14.0/nomos-darwin-arm64.tar.gz"
      sha256 "29f079130d338c09d7ec3d58d0cebb45ad7f34892d2875983fd6cdb602b17213"
    else
      url "https://github.com/safe-agentic-world/nomos/releases/download/v0.14.0/nomos-darwin-amd64.tar.gz"
      sha256 "f1b75aa626f380b54d784f3f152548f8f9405e806ba422351ca84a259f44b9a9"
    end
  end

  def install
    bin.install "nomos"
  end

  test do
    assert_match "version=", shell_output("#{bin}/nomos version")
  end
end
