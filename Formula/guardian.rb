# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Guardian < Formula
  desc "Universal data access tool"
  homepage "https://github.com/goto/guardian"
  version "0.8.2-alpha.2"
  license "Apache 2.0"

  depends_on "git"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/goto/guardian/releases/download/v0.8.2-alpha.2/guardian_0.8.2-alpha.2_Darwin_arm64.tar.gz"
      sha256 "83d038401fc3829c5d9454548359bf101a6f4794d04f395f337f6218313e6641"

      def install
        bin.install "guardian"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/goto/guardian/releases/download/v0.8.2-alpha.2/guardian_0.8.2-alpha.2_Darwin_x86_64.tar.gz"
      sha256 "2da4727df39ca5437b2509b5badc3ea729f28e78591466c12f0e331d4703aa40"

      def install
        bin.install "guardian"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/goto/guardian/releases/download/v0.8.2-alpha.2/guardian_0.8.2-alpha.2_Linux_arm64.tar.gz"
      sha256 "58ae0d48fd97897e56245303e5473ca8bbe3ec6715e3fda8d2043c43f2fe55bc"

      def install
        bin.install "guardian"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/goto/guardian/releases/download/v0.8.2-alpha.2/guardian_0.8.2-alpha.2_Linux_x86_64.tar.gz"
      sha256 "eaf08aae32f6fd4e91d097a420e37777f26b5055d861324cb3e1b4c334bb5325"

      def install
        bin.install "guardian"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/goto/guardian/releases/download/v0.8.2-alpha.2/guardian_0.8.2-alpha.2_Linux_arm.tar.gz"
      sha256 "22e6b0bc0273c8c80513286d04497e0b3e29e4f92ac495b45de32920fbb9c57b"

      def install
        bin.install "guardian"
      end
    end
  end
end
