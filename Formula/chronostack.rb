class Chronostack < Formula
  desc "Stripe Test Clocks for your Docker Compose stack"
  homepage "https://github.com/Asmodeus14/ChronoStack"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/Asmodeus14/ChronoStack/releases/download/v0.1.0-alpha.10/chronostack-0.1.0-alpha.10-darwin-arm64.tar.gz"
      sha256 "81bebc08277693c0c2380bb7acbfce9d798d3db238fa42a163a2e0f05b2d2855"
    end
    on_intel do
      url "https://github.com/Asmodeus14/ChronoStack/releases/download/v0.1.0-alpha.10/chronostack-0.1.0-alpha.10-darwin-x64.tar.gz"
      sha256 "731bde19b828ce6c1d1f33312ddc4bd16024ba83eb6b462221a9756337e13e2b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Asmodeus14/ChronoStack/releases/download/v0.1.0-alpha.10/chronostack-0.1.0-alpha.10-linux-arm64.tar.gz"
      sha256 "487420f8f6ebff7f9f174b976c3b7f1c7d1fe0e6769ef650c0a829e2aac316af"
    end
    on_intel do
      url "https://github.com/Asmodeus14/ChronoStack/releases/download/v0.1.0-alpha.10/chronostack-0.1.0-alpha.10-linux-x64.tar.gz"
      sha256 "9b526a1a821fd80d77cde604975e3035311e4567388dee2999bb677ff43cb2ea"
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
