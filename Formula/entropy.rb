# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Entropy < Formula
  desc "Infrastructure orchestration tool."
  homepage "https://github.com/goto/entropy"
  version "0.5.5"
  license "Apache 2.0"

  depends_on "git"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/goto/entropy/releases/download/v0.5.5/entropy_0.5.5_macos_arm64.tar.gz"
      sha256 "4239579dc05cd2e78b07f7b9188088f182f3c49e262bcd86bc102ef0f2056a6a"

      def install
        bin.install "entropy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/goto/entropy/releases/download/v0.5.5/entropy_0.5.5_macos_x86_64.tar.gz"
      sha256 "21bb6fbae60db1b12c11cbc8b2c8652f1a06971bc836b2742d84762a1a0ae160"

      def install
        bin.install "entropy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/goto/entropy/releases/download/v0.5.5/entropy_0.5.5_linux_arm64.tar.gz"
      sha256 "573b8c2fba00375502f4702a244bd07946dd22f0c2aca7d2c0431b294f638a51"

      def install
        bin.install "entropy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/goto/entropy/releases/download/v0.5.5/entropy_0.5.5_linux_x86_64.tar.gz"
      sha256 "146bda86739fbaeb81effab52afdd1f4f0d0931ecd5452d89a9fee3a070be1a2"

      def install
        bin.install "entropy"
      end
    end
  end
end
