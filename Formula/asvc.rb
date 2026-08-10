class Asvc < Formula
  desc "Shared local development service manager for humans and agents"
  homepage "https://github.com/homeant/agent-server-manager"
  version "0.4.5"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/homeant/agent-server-manager/releases/download/v0.4.5/asvc-v0.4.5-darwin-arm64.tar.gz"
      sha256 "3b4521a899009c9b848e62126943c68ba4f71665251f9d766bdea4fac39d0ed8"
    end

    on_intel do
      url "https://github.com/homeant/agent-server-manager/releases/download/v0.4.5/asvc-v0.4.5-darwin-x64.tar.gz"
      sha256 "3f4381915f6cc4d766b7abdd5fc75d66358aece8ece688bbca1aa66a5c8e50bc"
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
