class Asvc < Formula
  desc "Shared local development service manager for humans and agents"
  homepage "https://github.com/homeant/agent-server-manager"
  version "0.4.4"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/homeant/agent-server-manager/releases/download/v0.4.4/asvc-v0.4.4-darwin-arm64.tar.gz"
      sha256 "e2febe41ff696c680592051d872d49c2a713e38035e2501e210a4c0c614439bd"
    end

    on_intel do
      url "https://github.com/homeant/agent-server-manager/releases/download/v0.4.4/asvc-v0.4.4-darwin-x64.tar.gz"
      sha256 "e427640e08744ee4456d3795e28f9c463cf4f5763f745fd60fcc79104a3dec05"
    end
  end

  def install
    bin.install "asvc"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/asvc --version").strip
    assert_match "daemon", shell_output("#{bin}/asvc daemon status")
  end
end
