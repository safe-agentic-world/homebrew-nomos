class Nomos < Formula
  desc "Zero-trust control plane for AI agent side effects"
  homepage "https://github.com/safe-agentic-world/nomos"
  version "0.3.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/safe-agentic-world/nomos/releases/download/v0.3.0/nomos-darwin-arm64.tar.gz"
      sha256 "4bbbfd225ff81e10b9c863489d57136e02fbb37a1b077590b9c341657edf7551"
    else
      url "https://github.com/safe-agentic-world/nomos/releases/download/v0.3.0/nomos-darwin-amd64.tar.gz"
      sha256 "f4c3d8a7a19dbe0b1a0a71b1c5e9d35916224c9098962b86925104d58782c565"
    end
  end

  def install
    bin.install "nomos"
  end

  test do
    assert_match "version=", shell_output("#{bin}/nomos version")
  end
end
