# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Entropy < Formula
  desc "Infrastructure orchestration tool."
  homepage "https://github.com/goto/entropy"
  version "0.2.26-rc-2"
  license "Apache 2.0"

  depends_on "git"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/goto/entropy/releases/download/v0.2.26-rc-2/entropy_0.2.26-rc-2_macos_x86_64.tar.gz"
      sha256 "bb41da53d2526b1de3d51aa8ad74b271631e66460c0f701728ab898a2552ec93"

      def install
        bin.install "entropy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/goto/entropy/releases/download/v0.2.26-rc-2/entropy_0.2.26-rc-2_macos_arm64.tar.gz"
      sha256 "a73f99ba4d7112ae05f5783513291eadcc1a152db88a26ec8b0e480a2682b476"

      def install
        bin.install "entropy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/goto/entropy/releases/download/v0.2.26-rc-2/entropy_0.2.26-rc-2_linux_arm64.tar.gz"
      sha256 "2f85200a079223c7617b0b3277a79b9795894b9dcd1f729413c3e6ed87ff6c76"

      def install
        bin.install "entropy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/goto/entropy/releases/download/v0.2.26-rc-2/entropy_0.2.26-rc-2_linux_x86_64.tar.gz"
      sha256 "a207e220f634b88a26eb5bf7b1f5d32e8d503ca9b5da46ba6a068a233b60ea82"

      def install
        bin.install "entropy"
      end
    end
  end
end
