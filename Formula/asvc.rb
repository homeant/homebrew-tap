class Asvc < Formula
  desc "Shared local development service manager for humans and agents"
  homepage "https://github.com/homeant/agent-server-manager"
  version "0.4.2"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/homeant/agent-server-manager/releases/download/v0.4.2/asvc-v0.4.2-darwin-arm64.tar.gz"
      sha256 "8dde125c74a6ebd4fe2a1704e862c0680ed01684cf5d0730f8753fa718d09847"
    end

    on_intel do
      url "https://github.com/homeant/agent-server-manager/releases/download/v0.4.2/asvc-v0.4.2-darwin-x64.tar.gz"
      sha256 "c474fe31992068f787d76c851fee830f6ed4460104c5f68e35bf4017ac26a841"
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
