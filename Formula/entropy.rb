# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Entropy < Formula
  desc "Infrastructure orchestration tool."
  homepage "https://github.com/goto/entropy"
  version "0.5.1"
  license "Apache 2.0"

  depends_on "git"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/goto/entropy/releases/download/v0.5.1/entropy_0.5.1_macos_x86_64.tar.gz"
      sha256 "e519458a557702e196a283beb0a3d6f1a0647450b09c74a98505a2c32ad4bc8d"

      def install
        bin.install "entropy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/goto/entropy/releases/download/v0.5.1/entropy_0.5.1_macos_arm64.tar.gz"
      sha256 "444fcd15a17304bdd7cdf6650360d90fc9e95f6ce96cbf6bac752fbc00767f04"

      def install
        bin.install "entropy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/goto/entropy/releases/download/v0.5.1/entropy_0.5.1_linux_arm64.tar.gz"
      sha256 "572ec898a4d13f449530e7947d9d24324509f35e7fe186a4cc35fb952cc1db14"

      def install
        bin.install "entropy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/goto/entropy/releases/download/v0.5.1/entropy_0.5.1_linux_x86_64.tar.gz"
      sha256 "00f31a459cb506ab81cc298f819df3fdc4cfe343413a94a801ab31e12473b964"

      def install
        bin.install "entropy"
      end
    end
  end
end
