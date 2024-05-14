# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Optimus < Formula
  desc "Optimus helps your organization to build & manage data pipelines with ease."
  homepage "https://goto.github.io/optimus"
  version "0.12.2"
  license "Apache 2.0"

  depends_on "git"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/goto/optimus/releases/download/v0.12.2/optimus_0.12.2_macos_x86_64.tar.gz"
      sha256 "1ccebf3c8361d3e0ab27dd7873070dd6a0b6cca3671279a17f753285bca4b7c1"

      def install
        bin.install "optimus"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/goto/optimus/releases/download/v0.12.2/optimus_0.12.2_macos_arm64.tar.gz"
      sha256 "b0bb1b882814a4b6254178db38b06732553bff793e2c3e0c86b078bad9b1f067"

      def install
        bin.install "optimus"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/goto/optimus/releases/download/v0.12.2/optimus_0.12.2_linux_x86_64.tar.gz"
      sha256 "268c1b2285895e2d2afd80e3b7aaf1ae66cc25de030d481a55ea5e741cc9fb4a"

      def install
        bin.install "optimus"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/goto/optimus/releases/download/v0.12.2/optimus_0.12.2_linux_arm64.tar.gz"
      sha256 "3022c89e5aff5e418bab77e4153814d80424a995548be8af17cb9b3641fa846c"

      def install
        bin.install "optimus"
      end
    end
  end
end
