class Nomos < Formula
  desc "Zero-trust control plane for AI agent side effects"
  homepage "https://github.com/safe-agentic-world/nomos"
  version "0.3.3"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/safe-agentic-world/nomos/releases/download/v0.3.3/nomos-darwin-arm64.tar.gz"
      sha256 "99d5152cfe8e7ec18eced2a4c2c82394dc68f448b4214d03decbb940b7ced072"
    else
      url "https://github.com/safe-agentic-world/nomos/releases/download/v0.3.3/nomos-darwin-amd64.tar.gz"
      sha256 "37fbf5cd45a51ae25092a13cf884019a2c006cddca20d822fa24bbce1ba5293a"
    end
  end

  def install
    bin.install "nomos"
  end

  test do
    assert_match "version=", shell_output("#{bin}/nomos version")
  end
end
