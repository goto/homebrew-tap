# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Guardian < Formula
  desc "Universal data access tool"
  homepage "https://github.com/goto/guardian"
  version "0.7.5-alpha.1"
  license "Apache 2.0"

  depends_on "git"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/goto/guardian/releases/download/v0.7.5-alpha.1/guardian_0.7.5-alpha.1_macos_arm64.tar.gz"
      sha256 "55fc254479adbbd15712d48d818554cb2ae1ba081c527f4ddca3b5a546db7c40"

      def install
        bin.install "guardian"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/goto/guardian/releases/download/v0.7.5-alpha.1/guardian_0.7.5-alpha.1_macos_x86_64.tar.gz"
      sha256 "674831789e256e14753d0d30dac4f0d8956ba7ff69f196d98e6c311c19ae6d2f"

      def install
        bin.install "guardian"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/goto/guardian/releases/download/v0.7.5-alpha.1/guardian_0.7.5-alpha.1_linux_x86_64.tar.gz"
      sha256 "6a62146cdc3bc71e32a7d9035d5066f81abd9e28ab509654b1746ba6444d3dcd"

      def install
        bin.install "guardian"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/goto/guardian/releases/download/v0.7.5-alpha.1/guardian_0.7.5-alpha.1_linux_armv6.tar.gz"
      sha256 "72dff2356438dac8f0fa27f46ca9f5d9f2b32230d12f0f95f8cb2f80a7bf5586"

      def install
        bin.install "guardian"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/goto/guardian/releases/download/v0.7.5-alpha.1/guardian_0.7.5-alpha.1_linux_arm64.tar.gz"
      sha256 "578757734ed480ffb3595c303616074bdd5c55b78c385912736a8290f5aad434"

      def install
        bin.install "guardian"
      end
    end
  end
end
