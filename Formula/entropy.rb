# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Entropy < Formula
  desc "Infrastructure orchestration tool."
  homepage "https://github.com/goto/entropy"
  version "0.5.6"
  license "Apache 2.0"

  depends_on "git"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/goto/entropy/releases/download/v0.5.6/entropy_0.5.6_macos_x86_64.tar.gz"
      sha256 "8af182a4df97a5236c31bfe4d25d5c7a47eea8ca6260af6845b5bd22f7bf3d62"

      def install
        bin.install "entropy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/goto/entropy/releases/download/v0.5.6/entropy_0.5.6_macos_arm64.tar.gz"
      sha256 "c71c1c16fb00af70adcff640c903a2893f0d3d92ed86beeb9d0ae0bc6871097a"

      def install
        bin.install "entropy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/goto/entropy/releases/download/v0.5.6/entropy_0.5.6_linux_arm64.tar.gz"
      sha256 "b3712f1feaee073dc9c8366ced5b6de4e06e04c87cec34974ab33de9cf84d67e"

      def install
        bin.install "entropy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/goto/entropy/releases/download/v0.5.6/entropy_0.5.6_linux_x86_64.tar.gz"
      sha256 "9b7da0b9a5c146b25b06f323a00935f51f2f075ab8ebd313c53856b38dc28647"

      def install
        bin.install "entropy"
      end
    end
  end
end
