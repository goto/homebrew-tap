# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Shield < Formula
  desc "Identity and authorization system"
  homepage "https://github.com/odpf/shield"
  version "0.5.0-alpha"
  license "Apache 2.0"

  depends_on "git"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/odpf/shield/releases/download/v0.5.0-alpha/shield_0.5.0-alpha_macos_x86_64.tar.gz"
      sha256 "4b48147f77c1f11dc1b070b124f72c371f190a2ffc75ba0cbd3d3611ca878af0"

      def install
        bin.install "shield"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/odpf/shield/releases/download/v0.5.0-alpha/shield_0.5.0-alpha_macos_arm64.tar.gz"
      sha256 "e91d32100d55523bfc19bc7578cf852ff2b34dc2675749964171d6ee7fd979f1"

      def install
        bin.install "shield"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/odpf/shield/releases/download/v0.5.0-alpha/shield_0.5.0-alpha_linux_armv6.tar.gz"
      sha256 "e2148bac2e14d5fb95a005d04be9aeac8d27481209f60f0e4b784b763dc87e94"

      def install
        bin.install "shield"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/odpf/shield/releases/download/v0.5.0-alpha/shield_0.5.0-alpha_linux_arm64.tar.gz"
      sha256 "65c11be22efccc907a77a6a129602471f44bf0ce6b414609e9c96ee0ee683104"

      def install
        bin.install "shield"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/odpf/shield/releases/download/v0.5.0-alpha/shield_0.5.0-alpha_linux_x86_64.tar.gz"
      sha256 "006a436325bc8fc5d49dcc0194b2cca289fa87328b9e4cccbbf951d95d1c01da"

      def install
        bin.install "shield"
      end
    end
  end
end
