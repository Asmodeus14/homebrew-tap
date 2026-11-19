class Chronostack < Formula
  desc "Stripe Test Clocks for your Docker Compose stack"
  homepage "https://github.com/Asmodeus14/ChronoStack"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/Asmodeus14/ChronoStack/releases/download/v0.1.0-alpha.6/chronostack-0.1.0-alpha.6-darwin-arm64.tar.gz"
      sha256 "803e315550747b0ed70911790be0658489e7932e5ce6769f81d63b1f8591db93"
    end
    on_intel do
      url "https://github.com/Asmodeus14/ChronoStack/releases/download/v0.1.0-alpha.6/chronostack-0.1.0-alpha.6-darwin-x64.tar.gz"
      sha256 "4fd393229d77e4480aafb32124ba953457ef479cf9341845f4508de848e8f014"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Asmodeus14/ChronoStack/releases/download/v0.1.0-alpha.6/chronostack-0.1.0-alpha.6-linux-arm64.tar.gz"
      sha256 "1358229f25cce91883da509d16581bae4465a6dfce062dfad46ec4d13f8352ad"
    end
    on_intel do
      url "https://github.com/Asmodeus14/ChronoStack/releases/download/v0.1.0-alpha.6/chronostack-0.1.0-alpha.6-linux-x64.tar.gz"
      sha256 "73b58d0c621f5dbfaba06911fb0ed31b59d7820cb045075839af4ba51005eb86"
    end
  end

  def install
    bin.install "chronostack"
  end

  def caveats
    <<~EOS
      ChronoStack needs Docker with Compose v2 (Docker Desktop, OrbStack or Colima).
      Upgrade with `brew upgrade chronostack` rather than `chronostack update`.
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/chronostack --version")
  end
end
