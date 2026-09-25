class Nomos < Formula
  desc "Zero-trust control plane for AI agent side effects"
  homepage "https://github.com/safe-agentic-world/nomos"
  version "0.13.4"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/safe-agentic-world/nomos/releases/download/v0.13.4/nomos-darwin-arm64.tar.gz"
      sha256 "09d61cc590fbe755a6dbfe96ddd55e78963630e7ee30dfcdf6a33ed6dca4d235"
    else
      url "https://github.com/safe-agentic-world/nomos/releases/download/v0.13.4/nomos-darwin-amd64.tar.gz"
      sha256 "d393c4f6eb18a9e5b21a95503f9fe3690fc8d6afaba83bc4c951108d5eeaa581"
    end
  end

  def install
    bin.install "nomos"
  end

  test do
    assert_match "version=", shell_output("#{bin}/nomos version")
  end
end
