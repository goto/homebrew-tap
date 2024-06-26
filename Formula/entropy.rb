# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Entropy < Formula
  desc "Infrastructure orchestration tool."
  homepage "https://github.com/goto/entropy"
  version "0.1.23"
  license "Apache 2.0"

  depends_on "git"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/goto/entropy/releases/download/v0.1.23/entropy_0.1.23_macos_arm64.tar.gz"
      sha256 "4b4106c245093cb1fd39481891c369a2d7a954a04995e37da553e5b4d4aab731"

      def install
        bin.install "entropy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/goto/entropy/releases/download/v0.1.23/entropy_0.1.23_macos_x86_64.tar.gz"
      sha256 "d9e2671d5057e2b43bd7d08c4301cb5300d20dd5b9d402213176dd689b9c9973"

      def install
        bin.install "entropy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/goto/entropy/releases/download/v0.1.23/entropy_0.1.23_linux_arm64.tar.gz"
      sha256 "8d011ecb29e2f8cde94ed4eb4af9601c40b9b7bee339fff49fbbe729f63c5bc1"

      def install
        bin.install "entropy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/goto/entropy/releases/download/v0.1.23/entropy_0.1.23_linux_x86_64.tar.gz"
      sha256 "c40a7be6d8a73f4896686b06816e0153f297fb47ff34cfb4518a66e1412eab17"

      def install
        bin.install "entropy"
      end
    end
  end
end
