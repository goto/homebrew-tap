# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Compass < Formula
  desc "Metadata Discovery and Lineage Service"
  homepage "https://github.com/goto/compass"
  version "0.5.0-rc1"
  license "Apache 2.0"

  depends_on "git"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/goto/compass/releases/download/v0.5.0-rc1/compass_0.5.0-rc1_macos_x86_64.tar.gz"
      sha256 "738954085cdb4cf896f1b1c849890e6e5ab6f1feef7b49dc2fcc0521e968b7c4"

      def install
        bin.install "compass"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/goto/compass/releases/download/v0.5.0-rc1/compass_0.5.0-rc1_macos_arm64.tar.gz"
      sha256 "585efd7d1f35ff39522850f2516fb19360ce099ca78058044372ac694b7e7ced"

      def install
        bin.install "compass"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/goto/compass/releases/download/v0.5.0-rc1/compass_0.5.0-rc1_linux_x86_64.tar.gz"
      sha256 "dc3753acb7e0f678cb41a44a62ffa2d0001bdc55379115c44bb649562d8b4095"

      def install
        bin.install "compass"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/goto/compass/releases/download/v0.5.0-rc1/compass_0.5.0-rc1_linux_armv6.tar.gz"
      sha256 "8f53d4ce1cf16bc3294b4244e5900e28c9fa7b68f896fe3e50b189b9ac731499"

      def install
        bin.install "compass"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/goto/compass/releases/download/v0.5.0-rc1/compass_0.5.0-rc1_linux_arm64.tar.gz"
      sha256 "076fa32b778c55ce5ee49a9976f25726ac1e67f9336ac1fe9da9ffba0b04de2a"

      def install
        bin.install "compass"
      end
    end
  end
end
