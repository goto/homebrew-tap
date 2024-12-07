# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Guardian < Formula
  desc "Universal data access tool"
  homepage "https://github.com/goto/guardian"
  version "0.12.8-alpha.3"
  license "Apache 2.0"

  depends_on "git"

  on_macos do
    on_intel do
      url "https://github.com/goto/guardian/releases/download/v0.12.8-alpha.3/guardian_0.12.8-alpha.3_Darwin_x86_64.tar.gz"
      sha256 "539a11d1d02357cfbef740f3df66518057ab2ebbde20afb9b1b83aff7fbf5869"

      def install
        bin.install "guardian"
      end
    end
    on_arm do
      url "https://github.com/goto/guardian/releases/download/v0.12.8-alpha.3/guardian_0.12.8-alpha.3_Darwin_arm64.tar.gz"
      sha256 "b8ad03bb0c3d09fe5235c214d20336f1765e7690b24b1092088e63e6c7576cb7"

      def install
        bin.install "guardian"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/goto/guardian/releases/download/v0.12.8-alpha.3/guardian_0.12.8-alpha.3_Linux_x86_64.tar.gz"
        sha256 "45dd5326d0b76b2cf477750071029cd58f1028aac9e071e90d0d182a91865213"

        def install
          bin.install "guardian"
        end
      end
    end
    on_arm do
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/goto/guardian/releases/download/v0.12.8-alpha.3/guardian_0.12.8-alpha.3_Linux_arm.tar.gz"
        sha256 "82c20915c8ba8cc38c9f5465745d79c450c74fbc4c0cb04d6e7ca5095acde69f"

        def install
          bin.install "guardian"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/goto/guardian/releases/download/v0.12.8-alpha.3/guardian_0.12.8-alpha.3_Linux_arm64.tar.gz"
        sha256 "dc11280b0cab84344643183f4b6c1db9acef117d21779f914be58e95d7b9fb65"

        def install
          bin.install "guardian"
        end
      end
    end
  end
end
