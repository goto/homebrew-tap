# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Shield < Formula
  desc "Identity and authorization system"
  homepage "https://github.com/goto/shield"
  version "0.6.23"
  license "Apache 2.0"

  depends_on "git"

  on_macos do
    on_intel do
      url "https://github.com/goto/shield/releases/download/v0.6.23/shield_Darwin_x86_64.tar.gz"
      sha256 "1fdf6b5a7755b97433a7557ccbbd36ecab882b9eb9c1de6ec8f22ad0d1bd3874"

      def install
        bin.install "shield"
      end
    end
    on_arm do
      url "https://github.com/goto/shield/releases/download/v0.6.23/shield_Darwin_arm64.tar.gz"
      sha256 "4487fd4fa5cb581092d42484298bdb111ad8fbd6d969b80f5b23158a50b146ba"

      def install
        bin.install "shield"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/goto/shield/releases/download/v0.6.23/shield_Linux_x86_64.tar.gz"
        sha256 "4b505a56e95a14f9a5fb492e85c2283484999162d2dc24b79d0d490b4cbe9158"

        def install
          bin.install "shield"
        end
      end
    end
    on_arm do
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/goto/shield/releases/download/v0.6.23/shield_Linux_arm.tar.gz"
        sha256 "b9b3e4f62baa6e0525f67467d4f008d34dde2e41c63e83a7f75f8df8afd80d41"

        def install
          bin.install "shield"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/goto/shield/releases/download/v0.6.23/shield_Linux_arm64.tar.gz"
        sha256 "8c88de83c10b8da29e435274e8ea8a53fe1ab95fcdac0f7e08aad3dc0443a59c"

        def install
          bin.install "shield"
        end
      end
    end
  end
end
