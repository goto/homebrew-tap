# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Entropy < Formula
  desc "Infrastructure orchestration tool."
  homepage "https://github.com/goto/entropy"
  version "0.2.11-rc"
  license "Apache 2.0"

  depends_on "git"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/goto/entropy/releases/download/v0.2.11-rc/entropy_0.2.11-rc_macos_arm64.tar.gz"
      sha256 "7b416b802447930433353539fa525c3472d7290123709d3f4ae4e6e96c7cf79c"

      def install
        bin.install "entropy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/goto/entropy/releases/download/v0.2.11-rc/entropy_0.2.11-rc_macos_x86_64.tar.gz"
      sha256 "47d7e0f120c3802934ccc9eadcee445f3fb52748fd2ebbf7a0dd48ac2e506c6a"

      def install
        bin.install "entropy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/goto/entropy/releases/download/v0.2.11-rc/entropy_0.2.11-rc_linux_arm64.tar.gz"
      sha256 "dc2f9ca237af435343cc276a16d86e6376dad3a3aef15d32625f8ccefe396429"

      def install
        bin.install "entropy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/goto/entropy/releases/download/v0.2.11-rc/entropy_0.2.11-rc_linux_x86_64.tar.gz"
      sha256 "924d19e59d5578c797ae4bd180bee97f1ec93b9cb55a94a886fff2268d896637"

      def install
        bin.install "entropy"
      end
    end
  end
end
