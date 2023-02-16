# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Guardian < Formula
  desc "Universal data access tool"
  homepage "https://github.com/odpf/guardian"
  version "0.6.0-alpha.1"
  license "Apache 2.0"

  depends_on "git"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/odpf/guardian/releases/download/v0.6.0-alpha.1/guardian_0.6.0-alpha.1_macos_arm64.tar.gz"
      sha256 "0dbe22c87795840f44953ffd15a99a64bee950cc386b2b65da80992b89efbf68"

      def install
        bin.install "guardian"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/odpf/guardian/releases/download/v0.6.0-alpha.1/guardian_0.6.0-alpha.1_macos_x86_64.tar.gz"
      sha256 "8e28110c36969d850aad544766c08188115a4c4b2cf4bbe8999254142afb5e73"

      def install
        bin.install "guardian"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/odpf/guardian/releases/download/v0.6.0-alpha.1/guardian_0.6.0-alpha.1_linux_armv6.tar.gz"
      sha256 "b0cf46226c3ecfdf2af9e711c1c70569b9a0fe4eb44457ef36e4f450c53921c1"

      def install
        bin.install "guardian"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/odpf/guardian/releases/download/v0.6.0-alpha.1/guardian_0.6.0-alpha.1_linux_x86_64.tar.gz"
      sha256 "1a9540a9833c40cf6b263414bd9b667459779037b03503f1ea5cc422c1c611b4"

      def install
        bin.install "guardian"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/odpf/guardian/releases/download/v0.6.0-alpha.1/guardian_0.6.0-alpha.1_linux_arm64.tar.gz"
      sha256 "d3443bf26eaf387d49e8ad602e0bf51d20cd1ad5f1188e17c1d95a521853db38"

      def install
        bin.install "guardian"
      end
    end
  end
end
