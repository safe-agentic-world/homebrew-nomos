class Nomos < Formula
  desc "Deny-wins policy hook for Claude Code and Codex"
  homepage "https://github.com/safe-agentic-world/nomos"
  version "0.19.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/safe-agentic-world/nomos/releases/download/v0.19.1/nomos-darwin-arm64.tar.gz"
      sha256 "3ff54b8e3905a3fcaee23feb04d6385261c3da2e87cd8ad2bac1f8331da20f3a"
    else
      url "https://github.com/safe-agentic-world/nomos/releases/download/v0.19.1/nomos-darwin-amd64.tar.gz"
      sha256 "ac5b5e8cb89b1981f562cd95021f04e9cf64beb09510626da7bce2f0a6f449ed"
    end
  end

  def install
    bin.install "nomos"
  end

  test do
    assert_match "version=", shell_output("#{bin}/nomos version")
  end
end
