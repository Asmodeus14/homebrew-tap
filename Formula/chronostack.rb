class Chronostack < Formula
  desc "Stripe Test Clocks for your Docker Compose stack"
  homepage "https://github.com/Asmodeus14/ChronoStack"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/Asmodeus14/ChronoStack/releases/download/v0.1.0-alpha.7/chronostack-0.1.0-alpha.7-darwin-arm64.tar.gz"
      sha256 "009550dfb21d6f8365ec3518b20709c69d531c421b536d14f9693eed143c597e"
    end
    on_intel do
      url "https://github.com/Asmodeus14/ChronoStack/releases/download/v0.1.0-alpha.7/chronostack-0.1.0-alpha.7-darwin-x64.tar.gz"
      sha256 "969ede0a62116e5db912a5708188883f43afe6c8f5eaa82117956105107b8994"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Asmodeus14/ChronoStack/releases/download/v0.1.0-alpha.7/chronostack-0.1.0-alpha.7-linux-arm64.tar.gz"
      sha256 "20aed1512bf23f647ddc3779cd31f9432850587733f19c9735f9f92fcdcab21f"
    end
    on_intel do
      url "https://github.com/Asmodeus14/ChronoStack/releases/download/v0.1.0-alpha.7/chronostack-0.1.0-alpha.7-linux-x64.tar.gz"
      sha256 "c92dbc09072992895d66922a19c813c32ed856cbc4cbd353cd55119a785d1fab"
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
