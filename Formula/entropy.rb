# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Entropy < Formula
  desc "Infrastructure orchestration tool."
  homepage "https://github.com/goto/entropy"
  version "0.2.0"
  license "Apache 2.0"

  depends_on "git"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/goto/entropy/releases/download/v0.2.0/entropy_0.2.0_macos_x86_64.tar.gz"
      sha256 "5f821a07047ef032e02e6d0e6f73b25147a499f212e4d924e67d41dd11db3764"

      def install
        bin.install "entropy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/goto/entropy/releases/download/v0.2.0/entropy_0.2.0_macos_arm64.tar.gz"
      sha256 "8b1ae892c2093a71fcb54e27ba6bc6cb43d64bcdbec9aade1e2cd7e0fe45f03a"

      def install
        bin.install "entropy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/goto/entropy/releases/download/v0.2.0/entropy_0.2.0_linux_arm64.tar.gz"
      sha256 "566dea17f68199c5ccb97b2e8367b855dd88466003674791ddf3a1a3e89b911d"

      def install
        bin.install "entropy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/goto/entropy/releases/download/v0.2.0/entropy_0.2.0_linux_x86_64.tar.gz"
      sha256 "f111dcad8096c40eb3cb21a8a0e60cec4261b4c5a95ba6183df36245ca92201f"

      def install
        bin.install "entropy"
      end
    end
  end
end
