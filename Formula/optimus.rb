# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Optimus < Formula
  desc "Optimus helps your organization to build & manage data pipelines with ease."
  homepage "https://goto.github.io/optimus"
  version "0.10.0"
  license "Apache 2.0"

  depends_on "git"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/goto/optimus/releases/download/v0.10.0/optimus_0.10.0_macos_arm64.tar.gz"
      sha256 "5796672c37d78516b5b472ac73c52002861b2e5dd050cc76e6b84c6503cbf764"

      def install
        bin.install "optimus"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/goto/optimus/releases/download/v0.10.0/optimus_0.10.0_macos_x86_64.tar.gz"
      sha256 "b94bf7828a5ce03a77700079617943b8e64850a6ba141ccec8129c71ec182b72"

      def install
        bin.install "optimus"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/goto/optimus/releases/download/v0.10.0/optimus_0.10.0_linux_x86_64.tar.gz"
      sha256 "519ca4a05a7c8ca610d14b79178c09ad40028d87c9fb2d03ebf13b256bcf67dc"

      def install
        bin.install "optimus"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/goto/optimus/releases/download/v0.10.0/optimus_0.10.0_linux_arm64.tar.gz"
      sha256 "5abd9dc15cc402097acbc2ebd1a6b15444e79c0c2bb4bc28b31a43d4e62fe71f"

      def install
        bin.install "optimus"
      end
    end
  end
end
