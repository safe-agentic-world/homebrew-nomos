class Nomos < Formula
  desc "Zero-trust control plane for AI agent side effects"
  homepage "https://github.com/safe-agentic-world/nomos"
  version "0.10.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/safe-agentic-world/nomos/releases/download/v0.10.0/nomos-darwin-arm64.tar.gz"
      sha256 "1abbc7c106595e9272ff70a023c8da0a85154fe900650d1cdd6a4c3eec596433"
    else
      url "https://github.com/safe-agentic-world/nomos/releases/download/v0.10.0/nomos-darwin-amd64.tar.gz"
      sha256 "7f8d1fd2a00725140282848aa2bb13b733c9d668a6c9a6767da1ffbed45ab78e"
    end
  end

  def install
    bin.install "nomos"
  end

  test do
    assert_match "version=", shell_output("#{bin}/nomos version")
  end
end
