# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Optimus < Formula
  desc "Optimus helps your organization to build & manage data pipelines with ease."
  homepage "https://goto.github.io/optimus"
  version "0.10.1"
  license "Apache 2.0"

  depends_on "git"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/goto/optimus/releases/download/v0.10.1/optimus_0.10.1_macos_x86_64.tar.gz"
      sha256 "0c624f929d25af5a0af02d335abab416d96e0e35add80ba29fa02c4e8965f28e"

      def install
        bin.install "optimus"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/goto/optimus/releases/download/v0.10.1/optimus_0.10.1_macos_arm64.tar.gz"
      sha256 "ec95daeaae93af173f118853f8ee8f4d8b7c34e2cb73058af5c71c1c90fc2833"

      def install
        bin.install "optimus"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/goto/optimus/releases/download/v0.10.1/optimus_0.10.1_linux_x86_64.tar.gz"
      sha256 "eee3ed83e742148bba9a4163c87693d310e5fa8af744262079b8240c119b7a66"

      def install
        bin.install "optimus"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/goto/optimus/releases/download/v0.10.1/optimus_0.10.1_linux_arm64.tar.gz"
      sha256 "344168eade17e6a82504fc3b412b221761a512dc23e443f649694a07c5ec97d1"

      def install
        bin.install "optimus"
      end
    end
  end
end
