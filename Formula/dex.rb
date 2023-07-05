# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Dex < Formula
  desc "Infrastructure orchestration tool."
  homepage "https://github.com/goto/dex"
  version "0.7.3"
  license "Apache 2.0"

  depends_on "git"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/goto/dex/releases/download/v0.7.3/dex_Darwin_arm64.tar.gz"
      sha256 "77299397b19c4ff45e1f7465bc457212cd039f0a7db1e01181367923791aa984"

      def install
        bin.install "dex"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/goto/dex/releases/download/v0.7.3/dex_Darwin_amd64.tar.gz"
      sha256 "b5c11dbcfe1f35017eb962b853b63e8012aea86792730c29de0de60f42da8f24"

      def install
        bin.install "dex"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/goto/dex/releases/download/v0.7.3/dex_Linux_amd64.tar.gz"
      sha256 "a40ba89d7a462ec1e3340a0ae50b1d7daf69fd4b612fc1243f68763e89065119"

      def install
        bin.install "dex"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/goto/dex/releases/download/v0.7.3/dex_Linux_arm64.tar.gz"
      sha256 "e8f353f6e223f486a2ac230908df15680294dc85908cd54e4e004413baedef49"

      def install
        bin.install "dex"
      end
    end
  end
end
