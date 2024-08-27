# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Entropy < Formula
  desc "Infrastructure orchestration tool."
  homepage "https://github.com/goto/entropy"
  version "0.1.26"
  license "Apache 2.0"

  depends_on "git"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/goto/entropy/releases/download/v0.1.26/entropy_0.1.26_macos_arm64.tar.gz"
      sha256 "dd9ee32a24892039d36108192151d24b2d5b9a35dbca67aa07d9ad38e7ed537c"

      def install
        bin.install "entropy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/goto/entropy/releases/download/v0.1.26/entropy_0.1.26_macos_x86_64.tar.gz"
      sha256 "bc4b3f64d2de448e0c8dce771444c53328e15de57105bd013d4239af99f5ebf7"

      def install
        bin.install "entropy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/goto/entropy/releases/download/v0.1.26/entropy_0.1.26_linux_arm64.tar.gz"
      sha256 "c4d22a3f364c6a34b2d3dab9ae336c75a0416af291a88183a1bcce6e17614064"

      def install
        bin.install "entropy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/goto/entropy/releases/download/v0.1.26/entropy_0.1.26_linux_x86_64.tar.gz"
      sha256 "f5ae5186c22e0aae01b4270d1d3a2c2cd71afc55dc24dbf145e6a4b5e3d8421b"

      def install
        bin.install "entropy"
      end
    end
  end
end
