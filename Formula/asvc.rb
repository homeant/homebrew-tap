class Asvc < Formula
  desc "Shared local development service manager for humans and agents"
  homepage "https://github.com/homeant/agent-server-manager"
  version "0.4.5"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/homeant/agent-server-manager/releases/download/v0.4.5/asvc-v0.4.5-darwin-arm64.tar.gz"
      sha256 "808099af6d708b4b324a35037ee20594d79f5660fb89b297e64298a4d0b6f3f5"
    end

    on_intel do
      url "https://github.com/homeant/agent-server-manager/releases/download/v0.4.5/asvc-v0.4.5-darwin-x64.tar.gz"
      sha256 "d95e7c2f4f3b443a7884956f153652645c7a8bc6d4ef9ef68364a7b1223b3efb"
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
