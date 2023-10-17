# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Guardian < Formula
  desc "Universal data access tool"
  homepage "https://github.com/goto/guardian"
  version "0.7.12-alpha.1"
  license "Apache 2.0"

  depends_on "git"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/goto/guardian/releases/download/v0.7.12-alpha.1/guardian_0.7.12-alpha.1_Darwin_x86_64.tar.gz"
      sha256 "581a8c8d2040f4a3fe72266fc47322287f834959145ad280ad892c71efd50ca1"

      def install
        bin.install "guardian"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/goto/guardian/releases/download/v0.7.12-alpha.1/guardian_0.7.12-alpha.1_Darwin_arm64.tar.gz"
      sha256 "cba2d687a55c8d68ed66dfa07bd02299e709cd60e7849d59b102c91cb69094bd"

      def install
        bin.install "guardian"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/goto/guardian/releases/download/v0.7.12-alpha.1/guardian_0.7.12-alpha.1_Linux_arm64.tar.gz"
      sha256 "3a5fb38e0b1850ed94b41b9a9818fa0b2b8bbcfbbc4fa91c5292d86abcfce39e"

      def install
        bin.install "guardian"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/goto/guardian/releases/download/v0.7.12-alpha.1/guardian_0.7.12-alpha.1_Linux_arm.tar.gz"
      sha256 "3f38cc1ff4e41293e1283f5264c737f95b1e7c5bb2abbc5acdbf139fbf79e36d"

      def install
        bin.install "guardian"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/goto/guardian/releases/download/v0.7.12-alpha.1/guardian_0.7.12-alpha.1_Linux_x86_64.tar.gz"
      sha256 "e50e6f076a19c20b59ba4ff4116ccfaa7a6617a4393a677ace2329869885b589"

      def install
        bin.install "guardian"
      end
    end
  end
end
