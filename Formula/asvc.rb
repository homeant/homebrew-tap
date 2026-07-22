class Asvc < Formula
  desc "Shared local development service manager for humans and agents"
  homepage "https://github.com/homeant/agent-server-manager"
  version "0.4.1"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/homeant/agent-server-manager/releases/download/v0.4.1/asvc-v0.4.1-darwin-arm64.tar.gz"
      sha256 "3bb4595f6258f31e377a63c7d5a1d898fd256729d26959e0474a832547cfe9bb"
    end

    on_intel do
      url "https://github.com/homeant/agent-server-manager/releases/download/v0.4.1/asvc-v0.4.1-darwin-x64.tar.gz"
      sha256 "55596005c64caf8ec9e3603ebdceb235f08b5002dedcf0c87470f2c00b5363f6"
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
