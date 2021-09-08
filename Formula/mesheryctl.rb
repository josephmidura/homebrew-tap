# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Mesheryctl < Formula
  desc "The Multi-Service Mesh Management Plane."
  homepage "https://layer5.io/meshery"
  version "0.5.54"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/meshery/meshery/releases/download/v0.5.54/mesheryctl_0.5.54_Darwin_x86_64.zip"
      sha256 "408a7a7087d51b5d013afad5d47920c042457acff7e557e1c406989d998dda11"
    end
    if Hardware::CPU.arm?
      url "https://github.com/meshery/meshery/releases/download/v0.5.54/mesheryctl_0.5.54_Darwin_arm64.zip"
      sha256 "6aa7034a14624a4054857484b6a340ea225b01cec2650973d706af92ab34f2bd"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/meshery/meshery/releases/download/v0.5.54/mesheryctl_0.5.54_Linux_x86_64.zip"
      sha256 "ba460f61d092a70a5472e981dbdeeadd22d7e43b43edc2077ab39f49974bfe5c"
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/meshery/meshery/releases/download/v0.5.54/mesheryctl_0.5.54_Linux_armv6.zip"
      sha256 "14579b94cfcf27e7fdfef28465a8e2560a01677fb713bb916168ce62fd895484"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/meshery/meshery/releases/download/v0.5.54/mesheryctl_0.5.54_Linux_arm64.zip"
      sha256 "c05716551194c6641e0b890cc161ed8d9169250e615feb1c6ebc099b35ca83c5"
    end
  end

  def install
    bin.install "mesheryctl"
  end
end
