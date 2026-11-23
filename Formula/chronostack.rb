class Chronostack < Formula
  desc "Stripe Test Clocks for your Docker Compose stack"
  homepage "https://github.com/Asmodeus14/ChronoStack"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/Asmodeus14/ChronoStack/releases/download/v0.1.0-alpha.9/chronostack-0.1.0-alpha.9-darwin-arm64.tar.gz"
      sha256 "212813c02781eb8d3a3f76db8bac9e2e1981f1f5977756bfdc56ad56b72e0543"
    end
    on_intel do
      url "https://github.com/Asmodeus14/ChronoStack/releases/download/v0.1.0-alpha.9/chronostack-0.1.0-alpha.9-darwin-x64.tar.gz"
      sha256 "c443c1b9d028d43feb5ba5a5689343804c02db381d2d08f39115111dfe630b5a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Asmodeus14/ChronoStack/releases/download/v0.1.0-alpha.9/chronostack-0.1.0-alpha.9-linux-arm64.tar.gz"
      sha256 "3057a88c2e6829bfb83431820c6095e34e766502979df021f8ec8e55db5f613f"
    end
    on_intel do
      url "https://github.com/Asmodeus14/ChronoStack/releases/download/v0.1.0-alpha.9/chronostack-0.1.0-alpha.9-linux-x64.tar.gz"
      sha256 "263d4cb5e7d45bd883e2649078cd7c65cb688981ffa6ba620699e80df2477c0c"
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
