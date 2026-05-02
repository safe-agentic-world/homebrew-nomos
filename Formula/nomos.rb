class Nomos < Formula
  desc "Zero-trust control plane for AI agent side effects"
  homepage "https://github.com/safe-agentic-world/nomos"
  version "0.11.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/safe-agentic-world/nomos/releases/download/v0.11.2/nomos-darwin-arm64.tar.gz"
      sha256 "33e83b6476523484e5e1457d8da2aa422ebe23ba0dc31ce8d1cfa309295f11c5"
    else
      url "https://github.com/safe-agentic-world/nomos/releases/download/v0.11.2/nomos-darwin-amd64.tar.gz"
      sha256 "d5844b0d7e7412ac0924d4634af6b3ddf0188b47ec6506b8e0f2fdd746eaf0cc"
    end
  end

  def install
    bin.install "nomos"
  end

  test do
    assert_match "version=", shell_output("#{bin}/nomos version")
  end
end
