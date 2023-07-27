# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Entropy < Formula
  desc "Infrastructure orchestration tool."
  homepage "https://github.com/goto/entropy"
  version "0.7.8"
  license "Apache 2.0"

  depends_on "git"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/goto/entropy/releases/download/v0.7.8/entropy_0.7.8_macos_arm64.tar.gz"
      sha256 "a0aeb5c5f75129b566df84f415b81464ce8a418738441f30c28dff7fe7b9dd08"

      def install
        bin.install "entropy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/goto/entropy/releases/download/v0.7.8/entropy_0.7.8_macos_x86_64.tar.gz"
      sha256 "c5adfddc264716b6563221d01e0666f4e07a370e6221229228c484bea432eec1"

      def install
        bin.install "entropy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/goto/entropy/releases/download/v0.7.8/entropy_0.7.8_linux_arm64.tar.gz"
      sha256 "ee7817f507ff832b21906695b9b2b4cbbd43a2cbdc2a009fcf5f418d237f4c4a"

      def install
        bin.install "entropy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/goto/entropy/releases/download/v0.7.8/entropy_0.7.8_linux_x86_64.tar.gz"
      sha256 "f4c2b6de66c40d05abef00273199e464394f69de524dfdf71435458bc8e9f7a0"

      def install
        bin.install "entropy"
      end
    end
  end
end
