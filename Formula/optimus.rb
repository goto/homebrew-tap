# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Optimus < Formula
  desc "Optimus helps your organization to build & manage data pipelines with ease."
  homepage "https://odpf.github.io/optimus"
  version "0.2.5"
  license "Apache 2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/odpf/optimus/releases/download/v0.2.5/optimus_0.2.5_macos_x86_64.tar.gz"
      sha256 "625f7b62bcffc0300152276ad6934c4331298dac12e4a24b3a11a0abca0137b9"

      def install
        bin.install "optimus"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/odpf/optimus/releases/download/v0.2.5/optimus_0.2.5_macos_arm64.tar.gz"
      sha256 "f2bc1e050aec2dbc666c2f8c5a160277cebd1cef067fb1bc349ea8cc1129d9f8"

      def install
        bin.install "optimus"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/odpf/optimus/releases/download/v0.2.5/optimus_0.2.5_linux_arm64.tar.gz"
      sha256 "2ab71e993f0b9b5a3cafa982793ef96d53fd798ebb98554dd7b79b445e595262"

      def install
        bin.install "optimus"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/odpf/optimus/releases/download/v0.2.5/optimus_0.2.5_linux_x86_64.tar.gz"
      sha256 "3242a6508f9ba173cba856e31ae05aec3192fbd8ab0b51535fd2c30d284890d4"

      def install
        bin.install "optimus"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/odpf/optimus/releases/download/v0.2.5/optimus_0.2.5_linux_armv6.tar.gz"
      sha256 "039531182bd833d5d5dfc4ead04970438d8758e6be1c3160585ddb5d6d6e5022"

      def install
        bin.install "optimus"
      end
    end
  end

  depends_on "git"
end
