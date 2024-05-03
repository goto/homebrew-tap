# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Shield < Formula
  desc "Identity and authorization system"
  homepage "https://github.com/goto/shield"
  version "0.6.18"
  license "Apache 2.0"

  depends_on "git"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/goto/shield/releases/download/v0.6.18/shield_Darwin_x86_64.tar.gz"
      sha256 "d3a0bc245208a80b62f724e8ca2982622919cd0dbe61cb37c7c8e5de58957f72"

      def install
        bin.install "shield"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/goto/shield/releases/download/v0.6.18/shield_Darwin_arm64.tar.gz"
      sha256 "7f76ce2d994ef3dc480fdd8aba86e49692e4a7729f95a183c377435e2864ab0f"

      def install
        bin.install "shield"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/goto/shield/releases/download/v0.6.18/shield_Linux_x86_64.tar.gz"
      sha256 "a8027d3a125d01435a75300e3da97c699b1f34f661cc1c07dd6709cb9f9be92c"

      def install
        bin.install "shield"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/goto/shield/releases/download/v0.6.18/shield_Linux_arm.tar.gz"
      sha256 "8437a6e347ce9f1329a4c2b1709348a28c841da9a70b1c3c51c4f3c1a67e1524"

      def install
        bin.install "shield"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/goto/shield/releases/download/v0.6.18/shield_Linux_arm64.tar.gz"
      sha256 "7bf49ac4f2218854c84aeb541af8652ebcc83d4aabb02e3d459689f59bfbbce5"

      def install
        bin.install "shield"
      end
    end
  end
end
