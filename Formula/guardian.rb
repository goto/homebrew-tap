# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Guardian < Formula
  desc "Universal data access tool."
  homepage "https://github.com/odpf/guardian"
  version "0.2.10-alpha5"
  license "Apache 2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/odpf/guardian/releases/download/v0.2.10-alpha5/guardian_0.2.10-alpha5_macos_x86_64.tar.gz"
      sha256 "9de84c26971a1317e854b7041c317037aaa95faed40f91f28e12cd1c6bd3253a"

      def install
        bin.install "guardian"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/odpf/guardian/releases/download/v0.2.10-alpha5/guardian_0.2.10-alpha5_macos_arm64.tar.gz"
      sha256 "b7d146de20e9b317017c81b7d96da5899c75d467db106dd819c877a0f124dd8e"

      def install
        bin.install "guardian"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/odpf/guardian/releases/download/v0.2.10-alpha5/guardian_0.2.10-alpha5_linux_x86_64.tar.gz"
      sha256 "5c6981c1d5ba571c2e8051a4d6cca6e9c2aa185e337ef78c7b2a6451aefcc8ba"

      def install
        bin.install "guardian"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/odpf/guardian/releases/download/v0.2.10-alpha5/guardian_0.2.10-alpha5_linux_armv6.tar.gz"
      sha256 "061f6c30e71332e0dc1979761988f1d712754a58f5eccff8418ec123d3cf1032"

      def install
        bin.install "guardian"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/odpf/guardian/releases/download/v0.2.10-alpha5/guardian_0.2.10-alpha5_linux_arm64.tar.gz"
      sha256 "2b7181b8e547e3bbaaed9f0062f27fc38e3f904ca7cf2d26dd7394ebb6ff1a98"

      def install
        bin.install "guardian"
      end
    end
  end

  depends_on "git"
end
