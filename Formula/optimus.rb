# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Optimus < Formula
  desc "Optimus helps your organization to build & manage data pipelines with ease."
  homepage "https://goto.github.io/optimus"
  version "0.16.0"
  license "Apache 2.0"

  depends_on "git"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/goto/optimus/releases/download/v0.16.0/optimus_0.16.0_macos_x86_64.tar.gz"
      sha256 "f71ceccb23d50b7027254a856fe55e6b695bfc001f415f36124ef86cf3dc50c3"

      def install
        bin.install "optimus"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/goto/optimus/releases/download/v0.16.0/optimus_0.16.0_macos_arm64.tar.gz"
      sha256 "6237d8b94ace76dc4b1aae45c528af92216ee03339df5ad13623c93959bf95af"

      def install
        bin.install "optimus"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/goto/optimus/releases/download/v0.16.0/optimus_0.16.0_linux_arm64.tar.gz"
      sha256 "2f231e97ba5e2431a8030f596e1a197b63cd320bdc822eb24f1cc2eecbde4c42"

      def install
        bin.install "optimus"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/goto/optimus/releases/download/v0.16.0/optimus_0.16.0_linux_x86_64.tar.gz"
      sha256 "fb896ab75fb9b624172207b0f0c15b92caaba16a94d03491fa2350e181a72619"

      def install
        bin.install "optimus"
      end
    end
  end
end
