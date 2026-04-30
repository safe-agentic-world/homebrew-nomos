class Nomos < Formula
  desc "Zero-trust control plane for AI agent side effects"
  homepage "https://github.com/safe-agentic-world/nomos"
  version "0.10.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/safe-agentic-world/nomos/releases/download/v0.10.2/nomos-darwin-arm64.tar.gz"
      sha256 "1d2bfb7b8a883070383dbe9368f2fe17f923572c548d672df58be07f81ed0d38"
    else
      url "https://github.com/safe-agentic-world/nomos/releases/download/v0.10.2/nomos-darwin-amd64.tar.gz"
      sha256 "85f795ef946fd11bbbaad1f9db821c0a4eac03a6be91fe1bfc6d2e3f9cdee762"
    end
  end

  def install
    bin.install "nomos"
  end

  test do
    assert_match "version=", shell_output("#{bin}/nomos version")
  end
end
