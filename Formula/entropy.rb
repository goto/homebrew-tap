# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Entropy < Formula
  desc "Infrastructure orchestration tool."
  homepage "https://github.com/goto/entropy"
  version "0.1.8"
  license "Apache 2.0"

  depends_on "git"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/goto/entropy/releases/download/v0.1.8/entropy_0.1.8_macos_arm64.tar.gz"
      sha256 "279819549e032e7c6d7d9a6d3f999a60e207a5f0a61cb6d011ec71650e84ea0f"

      def install
        bin.install "entropy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/goto/entropy/releases/download/v0.1.8/entropy_0.1.8_macos_x86_64.tar.gz"
      sha256 "52361086816424a699292ee2240d865a0169f8ffc22e6f77112c0af088b68611"

      def install
        bin.install "entropy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/goto/entropy/releases/download/v0.1.8/entropy_0.1.8_linux_x86_64.tar.gz"
      sha256 "5000827523e8961898b33f893a9cadb6c311a40733da6c67a6e3955e9716f1a1"

      def install
        bin.install "entropy"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/goto/entropy/releases/download/v0.1.8/entropy_0.1.8_linux_arm64.tar.gz"
      sha256 "31785688bb321bf37a446151e3c9672067c7f5599ae7e9ca66d424ad8d441eed"

      def install
        bin.install "entropy"
      end
    end
  end
end
