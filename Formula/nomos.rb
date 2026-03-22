class Nomos < Formula
  desc "Zero-trust control plane for AI agent side effects"
  homepage "https://github.com/safe-agentic-world/nomos"
  version "0.5.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/safe-agentic-world/nomos/releases/download/v0.5.0/nomos-darwin-arm64.tar.gz"
      sha256 "b98b53e7e50d4c0b59142813827663aa72b244adef490f7fedf6f38e773f3da2"
    else
      url "https://github.com/safe-agentic-world/nomos/releases/download/v0.5.0/nomos-darwin-amd64.tar.gz"
      sha256 "8a61478f240b381b6ccc7dbc812393e510cc187caae55cbf326c2d6f3790de89"
    end
  end

  def install
    bin.install "nomos"
  end

  test do
    assert_match "version=", shell_output("#{bin}/nomos version")
  end
end
