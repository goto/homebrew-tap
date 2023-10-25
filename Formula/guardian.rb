# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Guardian < Formula
  desc "Universal data access tool"
  homepage "https://github.com/goto/guardian"
  version "0.7.13"
  license "Apache 2.0"

  depends_on "git"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/goto/guardian/releases/download/v0.7.13/guardian_0.7.13_Darwin_arm64.tar.gz"
      sha256 "51ad3b6b1d63062f6cf8f13230a9955d933525f2a7239424cab5b95b9cb40dcc"

      def install
        bin.install "guardian"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/goto/guardian/releases/download/v0.7.13/guardian_0.7.13_Darwin_x86_64.tar.gz"
      sha256 "8a5326fa971be82aeba8e61dbabb863cac237b521f4f56a6d590d3bbcaf1fa46"

      def install
        bin.install "guardian"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/goto/guardian/releases/download/v0.7.13/guardian_0.7.13_Linux_arm.tar.gz"
      sha256 "09875a2b75fa3f4b9d2f5e4b2fc34d3c03ed823f42ef6b23e376a892f716f104"

      def install
        bin.install "guardian"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/goto/guardian/releases/download/v0.7.13/guardian_0.7.13_Linux_x86_64.tar.gz"
      sha256 "3b4b6b20b98578db2aab27dc443fa51c59cb9ba1394912bac9eedc0c95d8e2e0"

      def install
        bin.install "guardian"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/goto/guardian/releases/download/v0.7.13/guardian_0.7.13_Linux_arm64.tar.gz"
      sha256 "fcce263643a5b90945fc835d8ee1c8a13e063f8a225466b269535874548f450a"

      def install
        bin.install "guardian"
      end
    end
  end
end
