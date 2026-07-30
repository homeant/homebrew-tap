class Asvc < Formula
  desc "Shared local development service manager for humans and agents"
  homepage "https://github.com/homeant/agent-server-manager"
  version "0.4.3"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/homeant/agent-server-manager/releases/download/v0.4.3/asvc-v0.4.3-darwin-arm64.tar.gz"
      sha256 "51fc302c7f8352cfc88d28da0e19443bc8b3f1a0a0d48dada42b44b767eec1bf"
    end

    on_intel do
      url "https://github.com/homeant/agent-server-manager/releases/download/v0.4.3/asvc-v0.4.3-darwin-x64.tar.gz"
      sha256 "af8cc4eb57754f3b7cd7e47e9b13bc75a3454f6bac95dad72fcc677b708468c3"
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
