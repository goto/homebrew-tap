# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Guardian < Formula
  desc "Universal data access tool"
  homepage "https://github.com/goto/guardian"
  version "0.7.4-alpha.3"
  license "Apache 2.0"

  depends_on "git"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/goto/guardian/releases/download/v0.7.4-alpha.3/guardian_0.7.4-alpha.3_macos_arm64.tar.gz"
      sha256 "2fa158143c533916a3733ffadd9ccc6e04524e3b52e5c91b824c052f2379ec5b"

      def install
        bin.install "guardian"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/goto/guardian/releases/download/v0.7.4-alpha.3/guardian_0.7.4-alpha.3_macos_x86_64.tar.gz"
      sha256 "1e46eac649456cd6d240a89077abdbbccb456a04e2f60e847f1c3e57fac61f08"

      def install
        bin.install "guardian"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/goto/guardian/releases/download/v0.7.4-alpha.3/guardian_0.7.4-alpha.3_linux_armv6.tar.gz"
      sha256 "9de16d270fecfc42a62b89136ef9a21deecc431463fa001c6a7b853dd4df3b68"

      def install
        bin.install "guardian"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/goto/guardian/releases/download/v0.7.4-alpha.3/guardian_0.7.4-alpha.3_linux_x86_64.tar.gz"
      sha256 "b5716f7ec53e2ab45e8e255921738a7bf91a4bdfabbf0e4984407cea16a2a01d"

      def install
        bin.install "guardian"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/goto/guardian/releases/download/v0.7.4-alpha.3/guardian_0.7.4-alpha.3_linux_arm64.tar.gz"
      sha256 "294855dc0c9822d41b82e30995fa681554e4f51112c197cb8e8f05af64319ccd"

      def install
        bin.install "guardian"
      end
    end
  end
end
