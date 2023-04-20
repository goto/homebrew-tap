# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Dex < Formula
  desc "Infrastructure orchestration tool."
  homepage "https://github.com/goto/dex"
  version "0.6.6"
  license "Apache 2.0"

  depends_on "git"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/goto/dex/releases/download/v0.6.6/dex_0.6.6_macos_arm64.tar.gz"
      sha256 "030ce45a3700039d2f2d77f75f0908a435301c902462bb1ae6045acedadddf9a"

      def install
        bin.install "dex"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/goto/dex/releases/download/v0.6.6/dex_0.6.6_macos_x86_64.tar.gz"
      sha256 "f64ac3eb5904d7406b093592a999f1f17debb5f63964c98d72ad1454dc032b33"

      def install
        bin.install "dex"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/goto/dex/releases/download/v0.6.6/dex_0.6.6_linux_arm64.tar.gz"
      sha256 "73fca7528848766b4e7a83400726d341b51c7ae37fa61eb8288ab2ef6372d6f8"

      def install
        bin.install "dex"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/goto/dex/releases/download/v0.6.6/dex_0.6.6_linux_x86_64.tar.gz"
      sha256 "e7fc302e6d7f5cdaa1603ab38f07402095139bef6875ef0e1f4c644a7f683d74"

      def install
        bin.install "dex"
      end
    end
  end
end
