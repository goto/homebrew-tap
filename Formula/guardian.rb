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
      sha256 "83908a40d93799f56d7240d91c7666e394cb5b4826cd7939df981bf20e25be4c"

      def install
        bin.install "guardian"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/goto/guardian/releases/download/v0.9.3-alpha.1/guardian_0.9.3-alpha.1_Darwin_arm64.tar.gz"
      sha256 "3fd961f6a879059493ee1f9dbcae0f990c6064a3a5b954fa2be8765262ea9478"

      def install
        bin.install "guardian"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/goto/guardian/releases/download/v0.9.3-alpha.1/guardian_0.9.3-alpha.1_Linux_x86_64.tar.gz"
      sha256 "9f3a4d9d5704fab3f29083dd0f66f85607f05a20070bfa5ab00c416447eab2d5"

      def install
        bin.install "guardian"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/goto/guardian/releases/download/v0.9.3-alpha.1/guardian_0.9.3-alpha.1_Linux_arm.tar.gz"
      sha256 "81853fb30af9161912cf2f9be7da7ecb258bb876e12417a12b2fa8a2de8a11d0"

      def install
        bin.install "guardian"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/goto/guardian/releases/download/v0.9.3-alpha.1/guardian_0.9.3-alpha.1_Linux_arm64.tar.gz"
      sha256 "a3bc138867f3627a14faa11ad99854bb22145ed485da2f56f6bd954b3f05dd61"

      def install
        bin.install "guardian"
      end
    end
  end
end
