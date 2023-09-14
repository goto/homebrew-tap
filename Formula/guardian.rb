# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Guardian < Formula
  desc "Universal data access tool"
  homepage "https://github.com/goto/guardian"
  version "0.7.6"
  license "Apache 2.0"

  depends_on "git"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/goto/guardian/releases/download/v0.7.6/guardian_0.7.6_Darwin_arm64.tar.gz"
      sha256 "41b9f652c759e16a8c5fa10621347c9ff34e401e4e56d182dd49805fe80d6232"

      def install
        bin.install "guardian"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/goto/guardian/releases/download/v0.7.6/guardian_0.7.6_Darwin_x86_64.tar.gz"
      sha256 "1c884c3eb21dfee94b38dd1a9809896f20140140f7d9df103e96ef586aa8db06"

      def install
        bin.install "guardian"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/goto/guardian/releases/download/v0.7.6/guardian_0.7.6_Linux_arm.tar.gz"
      sha256 "1ce5da60498de4f48bdc105846af09b45b8e3f047eb45b7daba41e1a0a2cd2af"

      def install
        bin.install "guardian"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/goto/guardian/releases/download/v0.7.6/guardian_0.7.6_Linux_x86_64.tar.gz"
      sha256 "f9bb3a240ab4de0e9b2003317b0ca72f255478857a134e155181cc6075b8bcfb"

      def install
        bin.install "guardian"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/goto/guardian/releases/download/v0.7.6/guardian_0.7.6_Linux_arm64.tar.gz"
      sha256 "6320f54435cf9ee4811070e14073bbf1859b5291debc75048779476b6bea1f55"

      def install
        bin.install "guardian"
      end
    end
  end
end
