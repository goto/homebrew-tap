# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Entropy < Formula
  desc "Infrastructure orchestration tool."
  homepage "https://github.com/goto/entropy"
  version "0.2.24"
  license "Apache 2.0"

  depends_on "git"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/goto/entropy/releases/download/v0.2.24/entropy_0.2.24_macos_arm64.tar.gz"
      sha256 "dc5697d5146a0d9573fd08ffb1decb5e5afc33b40f98ff0546796f19b5504ddc"

      def install
        bin.install "entropy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/goto/entropy/releases/download/v0.2.24/entropy_0.2.24_macos_x86_64.tar.gz"
      sha256 "cd9cf24a1c5c77f923c99d1a81ed3150c229aeb6d41fdc8c2d35925533287f47"

      def install
        bin.install "entropy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/goto/entropy/releases/download/v0.2.24/entropy_0.2.24_linux_arm64.tar.gz"
      sha256 "185fc2b4290b8b472fe0969ff386ae8c7d55f82307076b3603e723604ac46c99"

      def install
        bin.install "entropy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/goto/entropy/releases/download/v0.2.24/entropy_0.2.24_linux_x86_64.tar.gz"
      sha256 "8d891b2a97af678b74d4371c7a38ea8e4a59bf54c8b16360fa27f441ca817c5d"

      def install
        bin.install "entropy"
      end
    end
  end
end
