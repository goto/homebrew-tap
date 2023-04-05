# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Shield < Formula
  desc "Identity and authorization system"
  homepage "https://github.com/goto/shield"
  version "0.6.1"
  license "Apache 2.0"

  depends_on "git"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/goto/shield/releases/download/v0.6.1/shield_0.6.1_macos_x86_64.tar.gz"
      sha256 "dbe4d5e2644c311756c7cba7a872fd54a1ebed20a1651c7a72e431fdd5a7430c"

      def install
        bin.install "shield"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/goto/shield/releases/download/v0.6.1/shield_0.6.1_macos_arm64.tar.gz"
      sha256 "2d1e327e889751115ddb686c9d762991a86a5efcdeea9836bd1b8ab17ddfe8ca"

      def install
        bin.install "shield"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/goto/shield/releases/download/v0.6.1/shield_0.6.1_linux_armv6.tar.gz"
      sha256 "625a1e30e601bc9a4897caab9b4e8a9a652aa23865dbc3133bcd78d8e864ba5d"

      def install
        bin.install "shield"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/goto/shield/releases/download/v0.6.1/shield_0.6.1_linux_arm64.tar.gz"
      sha256 "3a1505266c6803db16b0a56d9a00af0ec3d6954a7d962553cf40905fc7f80976"

      def install
        bin.install "shield"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/goto/shield/releases/download/v0.6.1/shield_0.6.1_linux_x86_64.tar.gz"
      sha256 "6c10d96f0a6abd19ca977c9878b35549de7be46670868c8f5019e2b068e9ea14"

      def install
        bin.install "shield"
      end
    end
  end
end
