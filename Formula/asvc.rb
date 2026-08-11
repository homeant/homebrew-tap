class Asvc < Formula
  desc "Shared local development service manager for humans and agents"
  homepage "https://github.com/homeant/agent-server-manager"
  version "0.4.7"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/homeant/agent-server-manager/releases/download/v0.4.7/asvc-v0.4.7-darwin-arm64.tar.gz"
      sha256 "d62298141cca7d58651c489d293b27722cf5d32b593d2ae6e79fd65a34183d89"
    end

    on_intel do
      url "https://github.com/homeant/agent-server-manager/releases/download/v0.4.7/asvc-v0.4.7-darwin-x64.tar.gz"
      sha256 "4e9fc1b518f851f32f0d66adcdb4f2a36f9927fa40c1878a376e84afc622fa56"
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
