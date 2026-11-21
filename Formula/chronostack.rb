class Chronostack < Formula
  desc "Stripe Test Clocks for your Docker Compose stack"
  homepage "https://github.com/Asmodeus14/ChronoStack"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/Asmodeus14/ChronoStack/releases/download/v0.1.0-alpha.8/chronostack-0.1.0-alpha.8-darwin-arm64.tar.gz"
      sha256 "aa1508a39f6d62de0a4d98eb8080e9d6170a3a1328b14475bf45940790f6674f"
    end
    on_intel do
      url "https://github.com/Asmodeus14/ChronoStack/releases/download/v0.1.0-alpha.8/chronostack-0.1.0-alpha.8-darwin-x64.tar.gz"
      sha256 "9eda4a1e8a4dbee7fd986c57aa37b9a2b4f17e8ac650f8a97a257dafe2381e06"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Asmodeus14/ChronoStack/releases/download/v0.1.0-alpha.8/chronostack-0.1.0-alpha.8-linux-arm64.tar.gz"
      sha256 "6651fea2d87271fa02723cca676da54b1143a67ce579d0fc3956105674eded54"
    end
    on_intel do
      url "https://github.com/Asmodeus14/ChronoStack/releases/download/v0.1.0-alpha.8/chronostack-0.1.0-alpha.8-linux-x64.tar.gz"
      sha256 "580d16f5bc264703a393871cb6fa9be5bf975e4c7e40bf82be6989c601223983"
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
