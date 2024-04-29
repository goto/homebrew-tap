# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Guardian < Formula
  desc "Universal data access tool"
  homepage "https://github.com/goto/guardian"
  version "0.9.3-alpha.1"
  license "Apache 2.0"

  depends_on "git"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/goto/guardian/releases/download/v0.9.3-alpha.1/guardian_0.9.3-alpha.1_Darwin_x86_64.tar.gz"
      sha256 "47256acedc56410b1a6ca413741eb0f94491d02ffb28ec5b9ebb70ecbca0786b"

      def install
        bin.install "guardian"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/goto/guardian/releases/download/v0.9.3-alpha.1/guardian_0.9.3-alpha.1_Darwin_arm64.tar.gz"
      sha256 "478cac85da6aa435ce2243e907df19b9af0cf15fa45a90f48878a6eb8d3297bf"

      def install
        bin.install "guardian"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/goto/guardian/releases/download/v0.9.3-alpha.1/guardian_0.9.3-alpha.1_Linux_x86_64.tar.gz"
      sha256 "abb5f810c9cabad5ec9a788a9225a6287fb6ba0f0c300794d522e1da51de5df4"

      def install
        bin.install "guardian"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/goto/guardian/releases/download/v0.9.3-alpha.1/guardian_0.9.3-alpha.1_Linux_arm.tar.gz"
      sha256 "60e3fd161774c5c3aa66f22407846ceb6cccd974fa2aebdab5583af0ec973ea4"

      def install
        bin.install "guardian"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/goto/guardian/releases/download/v0.9.3-alpha.1/guardian_0.9.3-alpha.1_Linux_arm64.tar.gz"
      sha256 "093752ae3e2c422d0a205bacddacde99e99ada0e011a31d772df6bcd0282b2ba"

      def install
        bin.install "guardian"
      end
    end
  end
end
