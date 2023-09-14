# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Entropy < Formula
  desc "Infrastructure orchestration tool."
  homepage "https://github.com/goto/entropy"
  version "0.1.4"
  license "Apache 2.0"

  depends_on "git"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/goto/entropy/releases/download/v0.1.4/entropy_0.1.4_macos_x86_64.tar.gz"
      sha256 "d1fbdca0cf9c73c900a3b847f1d12e0e776c74acb75647e1b88b6f1f756ce0cd"

      def install
        bin.install "entropy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/goto/entropy/releases/download/v0.1.4/entropy_0.1.4_macos_arm64.tar.gz"
      sha256 "02bf2b1e94da5b1c594ac79c2e496bd7b339012d23c659da9c6557c61594604b"

      def install
        bin.install "entropy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/goto/entropy/releases/download/v0.1.4/entropy_0.1.4_linux_x86_64.tar.gz"
      sha256 "dc5b94f50b23a603ee3c7e65c0a47cb00843ff8f6c30e6b498d8fa691475256a"

      def install
        bin.install "entropy"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/goto/entropy/releases/download/v0.1.4/entropy_0.1.4_linux_arm64.tar.gz"
      sha256 "3ac346ea29085457e22512ebdf3a535ff22702c45fdaeef642364b3453f620ae"

      def install
        bin.install "entropy"
      end
    end
  end
end
