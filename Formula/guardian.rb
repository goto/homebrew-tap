# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Guardian < Formula
  desc "Universal data access tool"
  homepage "https://github.com/goto/guardian"
  version "0.7.5-alpha.6"
  license "Apache 2.0"

  depends_on "git"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/goto/guardian/releases/download/v0.7.5-alpha.6/guardian_0.7.5-alpha.6_Darwin_x86_64.tar.gz"
      sha256 "5ad4ef31b471fcee737103c1266bb09b36d348934362bf0287c56150ea939124"

      def install
        bin.install "guardian"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/goto/guardian/releases/download/v0.7.5-alpha.6/guardian_0.7.5-alpha.6_Darwin_arm64.tar.gz"
      sha256 "1c8909086e61fe5bd2b983aa97aac3c8d7344bad43da312e21de24dab2732cfb"

      def install
        bin.install "guardian"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/goto/guardian/releases/download/v0.7.5-alpha.6/guardian_0.7.5-alpha.6_Linux_arm64.tar.gz"
      sha256 "cc73f429082e26d267060bdd935dbafc44679a59f6d230d071c39e0ffe3395a4"

      def install
        bin.install "guardian"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/goto/guardian/releases/download/v0.7.5-alpha.6/guardian_0.7.5-alpha.6_Linux_x86_64.tar.gz"
      sha256 "f00b6e8f2f3d4a345b5cac9a5cda4556a02b09c48e01cd3abe7a8e1bf3626024"

      def install
        bin.install "guardian"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/goto/guardian/releases/download/v0.7.5-alpha.6/guardian_0.7.5-alpha.6_Linux_arm.tar.gz"
      sha256 "1f928cdbea0f338e7e1ef5ce63136baa500f858e1dec04dc7ba16e7f04c77f30"

      def install
        bin.install "guardian"
      end
    end
  end
end
