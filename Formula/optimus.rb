# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Optimus < Formula
  desc "Optimus helps your organization to build & manage data pipelines with ease."
  homepage "https://goto.github.io/optimus"
  version "0.12.1"
  license "Apache 2.0"

  depends_on "git"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/goto/optimus/releases/download/v0.12.1/optimus_0.12.1_macos_arm64.tar.gz"
      sha256 "2b6455973d8dcb0f93d477a20b331f6558cbaa121996dbd14bddd7b37e8f680d"

      def install
        bin.install "optimus"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/goto/optimus/releases/download/v0.12.1/optimus_0.12.1_macos_x86_64.tar.gz"
      sha256 "12c8a0e822ff997c22a93df4ca0d5d4bc0f488e9a84ef339f73eb8f35e702110"

      def install
        bin.install "optimus"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/goto/optimus/releases/download/v0.12.1/optimus_0.12.1_linux_arm64.tar.gz"
      sha256 "5766b39bdbb4e7fe3a6087bb57a2274dc07e8ee7f3c98d67477b2aef80dd3544"

      def install
        bin.install "optimus"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/goto/optimus/releases/download/v0.12.1/optimus_0.12.1_linux_x86_64.tar.gz"
      sha256 "7181d5f03517d00910c9bb43a519718081b436585c7006bd96dcd245b6739ed4"

      def install
        bin.install "optimus"
      end
    end
  end
end
