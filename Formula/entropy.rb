# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Entropy < Formula
  desc "Infrastructure orchestration tool."
  homepage "https://github.com/goto/entropy"
  version "0.7.10"
  license "Apache 2.0"

  depends_on "git"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/goto/entropy/releases/download/v0.7.10/entropy_0.7.10_macos_arm64.tar.gz"
      sha256 "148ac809dfe8add0144d8efc615954841ced787e89e05ef95376ae9bbe8bbecb"

      def install
        bin.install "entropy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/goto/entropy/releases/download/v0.7.10/entropy_0.7.10_macos_x86_64.tar.gz"
      sha256 "df6407d91091085da3e0afc42c1be7be70eecf9942f85cbee9bc681cbdb2f5dd"

      def install
        bin.install "entropy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/goto/entropy/releases/download/v0.7.10/entropy_0.7.10_linux_arm64.tar.gz"
      sha256 "67fa6bbbdc987044014b37e6e1ab40d6d3cb8f7c6617675d78059274dee955f5"

      def install
        bin.install "entropy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/goto/entropy/releases/download/v0.7.10/entropy_0.7.10_linux_x86_64.tar.gz"
      sha256 "3bf7f51b79139330a0158f7c9d234ea9e398ea06bd85d64401cbeda0e67b0511"

      def install
        bin.install "entropy"
      end
    end
  end
end
