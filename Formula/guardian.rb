# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Guardian < Formula
  desc "Universal data access tool"
  homepage "https://github.com/goto/guardian"
  version "0.7.5-alpha.5"
  license "Apache 2.0"

  depends_on "git"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/goto/guardian/releases/download/v0.7.5-alpha.5/guardian_0.7.5-alpha.5_Darwin_x86_64.tar.gz"
      sha256 "68a89cc659aa5f71018d583f92f11f2d29a419dff178c4b6078983b5b4932e48"

      def install
        bin.install "guardian"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/goto/guardian/releases/download/v0.7.5-alpha.5/guardian_0.7.5-alpha.5_Darwin_arm64.tar.gz"
      sha256 "43f5309df7f27619c338f5a5a7767f41b5c9ebe8ea7381b1a99a9de211a0f18d"

      def install
        bin.install "guardian"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/goto/guardian/releases/download/v0.7.5-alpha.5/guardian_0.7.5-alpha.5_Linux_arm.tar.gz"
      sha256 "cf81f17371f2fc77e7f186c28744d151f11fa722b27909ef2d36ce80b2147167"

      def install
        bin.install "guardian"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/goto/guardian/releases/download/v0.7.5-alpha.5/guardian_0.7.5-alpha.5_Linux_arm64.tar.gz"
      sha256 "13778457f992cda84c74922caf5b9152a1be7049f996d2ad342cd33930c005f0"

      def install
        bin.install "guardian"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/goto/guardian/releases/download/v0.7.5-alpha.5/guardian_0.7.5-alpha.5_Linux_x86_64.tar.gz"
      sha256 "ba5e14a5e24d091746d9b310e44385ac205440c0df51dda2c8c6bd89d47c93cd"

      def install
        bin.install "guardian"
      end
    end
  end
end
