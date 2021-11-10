# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class OptimusPluginsOdpf < Formula
  desc "Optimus Plugins for warehouse"
  homepage ""
  version "0.0.9"
  license "Apache 2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/odpf/transformers/releases/download/v0.0.9/transformers_0.0.9_macos_arm64.tar.gz"
      sha256 "965871124483fc885129fd9bb06ba8bc5ce2256f973acb6961e35903adf6d8e8"

      def install
        bin.install Dir["optimus-*"]
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/odpf/transformers/releases/download/v0.0.9/transformers_0.0.9_macos_x86_64.tar.gz"
      sha256 "61e37ec328289c19107062341629dc6fcf54afa972549cd3dc2f6f590725e55d"

      def install
        bin.install Dir["optimus-*"]
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/odpf/transformers/releases/download/v0.0.9/transformers_0.0.9_linux_x86_64.tar.gz"
      sha256 "f1be069d4bea1da8e0d545409d737e72475aafd941f84cf598e30232cad7e063"

      def install
        bin.install Dir["optimus-*"]
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/odpf/transformers/releases/download/v0.0.9/transformers_0.0.9_linux_arm64.tar.gz"
      sha256 "fd936053c0fd3e65866225bacf5f6ba98155bf08e50e4c4499d5978d978eb9e4"

      def install
        bin.install Dir["optimus-*"]
      end
    end
  end

  depends_on "odpf/taps/optimus"
end
