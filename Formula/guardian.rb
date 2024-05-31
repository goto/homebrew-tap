# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Guardian < Formula
  desc "Universal data access tool"
  homepage "https://github.com/goto/guardian"
  version "0.11.0-beta.1"
  license "Apache 2.0"

  depends_on "git"

  on_macos do
    on_intel do
      url "https://github.com/goto/guardian/releases/download/v0.11.0-beta.1/guardian_0.11.0-beta.1_Darwin_x86_64.tar.gz"
      sha256 "a7d7a9cf7b9fba1f1f670e3911b27a25a30b6ba69443e62a86af8334767d635c"

      def install
        bin.install "guardian"
      end
    end
    on_arm do
      url "https://github.com/goto/guardian/releases/download/v0.11.0-beta.1/guardian_0.11.0-beta.1_Darwin_arm64.tar.gz"
      sha256 "47b7d4d531ab8d32182522bca74ab5bc480238f3a266cdd313b6e6011eb0cd80"

      def install
        bin.install "guardian"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/goto/guardian/releases/download/v0.11.0-beta.1/guardian_0.11.0-beta.1_Linux_x86_64.tar.gz"
        sha256 "41913f712ec38e19a4f63e95e55c38c8c87cc07755021d7b3fc037a29cb2958e"

        def install
          bin.install "guardian"
        end
      end
    end
    on_arm do
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/goto/guardian/releases/download/v0.11.0-beta.1/guardian_0.11.0-beta.1_Linux_arm.tar.gz"
        sha256 "cc34c9d53ad9c95f27ef44d8301de3e7a5cc7311cc62b10385df6a3de6094276"

        def install
          bin.install "guardian"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/goto/guardian/releases/download/v0.11.0-beta.1/guardian_0.11.0-beta.1_Linux_arm64.tar.gz"
        sha256 "6740cadefa0987efc9d8d1266db99517af5c4640cdb6725a88c277563983e090"

        def install
          bin.install "guardian"
        end
      end
    end
  end
end
