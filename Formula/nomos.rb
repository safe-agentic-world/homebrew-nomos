class Nomos < Formula
  desc "Deny-wins policy hook for Claude Code and Codex"
  homepage "https://github.com/safe-agentic-world/nomos"
  version "0.19.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/safe-agentic-world/nomos/releases/download/v0.19.2/nomos-darwin-arm64.tar.gz"
      sha256 "f5a5e573e42cc04081f7a760cd3293623c5037af164b9754c913ba04360a94a1"
    else
      url "https://github.com/safe-agentic-world/nomos/releases/download/v0.19.2/nomos-darwin-amd64.tar.gz"
      sha256 "56d4f61f0e2bc22715889fb417f23715cc96ed4dbab3f22f7516849b2b04a975"
    end
  end

  def install
    bin.install "nomos"
  end

  test do
    assert_match "version=", shell_output("#{bin}/nomos version")
  end
end
