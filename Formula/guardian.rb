# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Guardian < Formula
  desc "Universal data access tool"
  homepage "https://github.com/goto/guardian"
  version "0.7.5-alpha.8"
  license "Apache 2.0"

  depends_on "git"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/goto/guardian/releases/download/v0.7.5-alpha.8/guardian_0.7.5-alpha.8_Darwin_x86_64.tar.gz"
      sha256 "cd5122b9eb468b48a841209c0974461fe3d2330b18d3902bd13112ac4dd990f0"

      def install
        bin.install "guardian"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/goto/guardian/releases/download/v0.7.5-alpha.8/guardian_0.7.5-alpha.8_Darwin_arm64.tar.gz"
      sha256 "3659d6add572aafa9e67502035b58d6d6d5dfee0361148cb3fb74c0ef82893c1"

      def install
        bin.install "guardian"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/goto/guardian/releases/download/v0.7.5-alpha.8/guardian_0.7.5-alpha.8_Linux_x86_64.tar.gz"
      sha256 "71e5e28397a0de49ba25c846273fd83fccb84687b258afced430c68b7a6eb364"

      def install
        bin.install "guardian"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/goto/guardian/releases/download/v0.7.5-alpha.8/guardian_0.7.5-alpha.8_Linux_arm.tar.gz"
      sha256 "d20da14b44ae0aee2d6f812c1a67ab5ad21fa7589fb4ae44d831617b40e823ac"

      def install
        bin.install "guardian"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/goto/guardian/releases/download/v0.7.5-alpha.8/guardian_0.7.5-alpha.8_Linux_arm64.tar.gz"
      sha256 "de208f5343e6421c2de8111d565440eb61456351c0725bfcf95d38d84c293bed"

      def install
        bin.install "guardian"
      end
    end
  end
end
