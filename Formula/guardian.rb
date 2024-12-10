# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Guardian < Formula
  desc "Universal data access tool"
  homepage "https://github.com/goto/guardian"
  version "0.12.8-alpha.8"
  license "Apache 2.0"

  depends_on "git"

  on_macos do
    on_intel do
      url "https://github.com/goto/guardian/releases/download/v0.12.8-alpha.8/guardian_0.12.8-alpha.8_Darwin_x86_64.tar.gz"
      sha256 "f25311b7136dd7f5c09760b1b613df3f5690767deba1df4d158ed6c91bb41221"

      def install
        bin.install "guardian"
      end
    end
    on_arm do
      url "https://github.com/goto/guardian/releases/download/v0.12.8-alpha.8/guardian_0.12.8-alpha.8_Darwin_arm64.tar.gz"
      sha256 "0f5590c99e5facca58998ada6d805ccdad85243229a572540e7113ce2ad9fef3"

      def install
        bin.install "guardian"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/goto/guardian/releases/download/v0.12.8-alpha.8/guardian_0.12.8-alpha.8_Linux_x86_64.tar.gz"
        sha256 "18be1f46e455d0da4a5d7d5b8d47e431ae22cf9cd440885846973b9590d390b0"

        def install
          bin.install "guardian"
        end
      end
    end
    on_arm do
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/goto/guardian/releases/download/v0.12.8-alpha.8/guardian_0.12.8-alpha.8_Linux_arm.tar.gz"
        sha256 "cce6cd816d726ab75234a19f6291ab9bbe359b4449942a3944d8f9dccb1bed45"

        def install
          bin.install "guardian"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/goto/guardian/releases/download/v0.12.8-alpha.8/guardian_0.12.8-alpha.8_Linux_arm64.tar.gz"
        sha256 "72c3f7f8b66269b5c29e8c42c5f81697eea0f8318f068358d1dcb344f6e65076"

        def install
          bin.install "guardian"
        end
      end
    end
  end
end
