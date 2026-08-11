class Asvc < Formula
  desc "Shared local development service manager for humans and agents"
  homepage "https://github.com/homeant/agent-server-manager"
  version "0.4.6"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/homeant/agent-server-manager/releases/download/v0.4.6/asvc-v0.4.6-darwin-arm64.tar.gz"
      sha256 "9b6b89ccde914a38bad277fb7e4499b8d27b241e04f90e883e32142248473379"
    end

    on_intel do
      url "https://github.com/homeant/agent-server-manager/releases/download/v0.4.6/asvc-v0.4.6-darwin-x64.tar.gz"
      sha256 "eaa271577c745d41ad212b533fd3fabf20de777f71e3f3f8f38194d18b7be3d8"
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
