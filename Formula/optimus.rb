# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Optimus < Formula
  desc "Optimus helps your organization to build & manage data pipelines with ease."
  homepage "https://goto.github.io/optimus"
  version "0.11.10"
  license "Apache 2.0"

  depends_on "git"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/goto/optimus/releases/download/v0.11.10/optimus_0.11.10_macos_arm64.tar.gz"
      sha256 "be787defaa197f66927e95ff28b475fe657d34b6b9e753596db28e04b55d85dd"

      def install
        bin.install "optimus"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/goto/optimus/releases/download/v0.11.10/optimus_0.11.10_macos_x86_64.tar.gz"
      sha256 "810e1658ab230e5c1f3c835eca2759792a438a493dc9629e85eeb9b16acd1447"

      def install
        bin.install "optimus"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/goto/optimus/releases/download/v0.11.10/optimus_0.11.10_linux_x86_64.tar.gz"
      sha256 "dc46a69ffb8aae275d2245f692f5b1a540b6a589dc15cd4c7fd0b05a7e6d41bc"

      def install
        bin.install "optimus"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/goto/optimus/releases/download/v0.11.10/optimus_0.11.10_linux_arm64.tar.gz"
      sha256 "ba39aea547c065efd79a675bea83c342921da8968686c9245ee58d10b91ef3c7"

      def install
        bin.install "optimus"
      end
    end
  end
end
