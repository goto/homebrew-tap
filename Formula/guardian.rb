# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Guardian < Formula
  desc "Universal data access tool"
  homepage "https://github.com/goto/guardian"
  version "0.7.4-alpha.1"
  license "Apache 2.0"

  depends_on "git"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/goto/guardian/releases/download/v0.7.4-alpha.1/guardian_0.7.4-alpha.1_macos_x86_64.tar.gz"
      sha256 "de4db560dd0bf4668e58eb4db780940f22fefd71123f0ec0aa9e13e69f5f0d77"

      def install
        bin.install "guardian"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/goto/guardian/releases/download/v0.7.4-alpha.1/guardian_0.7.4-alpha.1_macos_arm64.tar.gz"
      sha256 "3ae196e1489f7dd925a9a00a86487cb012f8e063c21aa3b608d13914f05afa02"

      def install
        bin.install "guardian"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/goto/guardian/releases/download/v0.7.4-alpha.1/guardian_0.7.4-alpha.1_linux_x86_64.tar.gz"
      sha256 "f2a478e4292a205c65e179cfe60fb8be9fbe51d47889f1d3839b8b4328284734"

      def install
        bin.install "guardian"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/goto/guardian/releases/download/v0.7.4-alpha.1/guardian_0.7.4-alpha.1_linux_armv6.tar.gz"
      sha256 "c35fa6eebc26174e377ff09da2f822319874195473c639aa87f44f2a1cad7026"

      def install
        bin.install "guardian"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/goto/guardian/releases/download/v0.7.4-alpha.1/guardian_0.7.4-alpha.1_linux_arm64.tar.gz"
      sha256 "f356d8a5b99bcb00cca085a77272b48c5d72ce2952e88c8c32633cd31453af3c"

      def install
        bin.install "guardian"
      end
    end
  end
end
