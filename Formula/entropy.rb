# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Entropy < Formula
  desc "Infrastructure orchestration tool."
  homepage "https://github.com/goto/entropy"
  version "0.2.29"
  license "Apache 2.0"

  depends_on "git"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/goto/entropy/releases/download/v0.2.29/entropy_0.2.29_macos_arm64.tar.gz"
      sha256 "9946b5ab63d60695252c4cdbc481682e29b81d899b2040f051bff7424292032f"

      def install
        bin.install "entropy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/goto/entropy/releases/download/v0.2.29/entropy_0.2.29_macos_x86_64.tar.gz"
      sha256 "1e2f435e141ce5d98e1ad9b499ceaa38451989da2d43657a047ba544e8d85b66"

      def install
        bin.install "entropy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/goto/entropy/releases/download/v0.2.29/entropy_0.2.29_linux_arm64.tar.gz"
      sha256 "6d0c892abe9effbaac2bf57c20094aa285ce6dbf05552d9368db0cc6d5949086"

      def install
        bin.install "entropy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/goto/entropy/releases/download/v0.2.29/entropy_0.2.29_linux_x86_64.tar.gz"
      sha256 "74043a4b114fb28c3e993b0d8faf6a3fa6d9078aca82b052001057736b81ebda"

      def install
        bin.install "entropy"
      end
    end
  end
end
