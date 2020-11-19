# This file was generated by GoReleaser. DO NOT EDIT.
class Mesheryctl < Formula
  desc "The Multi-Service Mesh Management Plane."
  homepage "https://layer5.io/meshery"
  version "0.4.23"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/layer5io/meshery/releases/download/v0.4.23/mesheryctl_0.4.23_Darwin_x86_64.zip"
    sha256 "b4b427d707c554c69ec5afcc2f8543b28493e2be885ce76977ab4018407c3e0c"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/layer5io/meshery/releases/download/v0.4.23/mesheryctl_0.4.23_Linux_x86_64.zip"
    sha256 "f4b3e21b3ed82f3facf177cc0715dab40a5d1efead70617a41b74e2d5bc7fc32"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/layer5io/meshery/releases/download/v0.4.23/mesheryctl_0.4.23_Linux_armv6.zip"
    sha256 "209c3476aa39786b6e4cbb256e159b8f5f47aec211f1f974a8264329e7249ee1"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/layer5io/meshery/releases/download/v0.4.23/mesheryctl_0.4.23_Linux_arm64.zip"
    sha256 "c1f48700480ace28b1f3603b1bda7731b370452c9fd11c16b3119fd6ea778df6"
  end

  def install
    bin.install "mesheryctl"
  end
end
