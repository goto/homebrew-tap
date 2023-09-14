# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Entropy < Formula
  desc "Infrastructure orchestration tool."
  homepage "https://github.com/goto/entropy"
  version "0.1.4"
  license "Apache 2.0"

  depends_on "git"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/goto/entropy/releases/download/v0.1.4/entropy_0.1.4_macos_x86_64.tar.gz"
      sha256 "831c5bb5de5c40f3bb578ecbd180924ce551cf2df587e58f78a3f81851576289"

      def install
        bin.install "entropy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/goto/entropy/releases/download/v0.1.4/entropy_0.1.4_macos_arm64.tar.gz"
      sha256 "1c6a944cc68767392d89b1de6135d8a4b39df0fe838822d869cb5d57725a8af0"

      def install
        bin.install "entropy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/goto/entropy/releases/download/v0.1.4/entropy_0.1.4_linux_arm64.tar.gz"
      sha256 "6ef71fa09fc6fe49b550fff63d4ddacfc8b9239b0b25686bca6cf9d8732ab6a6"

      def install
        bin.install "entropy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/goto/entropy/releases/download/v0.1.4/entropy_0.1.4_linux_x86_64.tar.gz"
      sha256 "b292360dbc0ad8d85d999a3949c22f9f57729369689dbddb9525a9b8ee292b1a"

      def install
        bin.install "entropy"
      end
    end
  end
end
