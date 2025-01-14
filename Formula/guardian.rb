# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Guardian < Formula
  desc "Universal data access tool"
  homepage "https://github.com/goto/guardian"
  version "0.12.9-beta.4"
  license "Apache 2.0"

  depends_on "git"

  on_macos do
    on_intel do
      url "https://github.com/goto/guardian/releases/download/v0.12.9-beta.4/guardian_0.12.9-beta.4_Darwin_x86_64.tar.gz"
      sha256 "c5cab839d0657e01d993289c590ffdd05bcc92f72597424654e1110582e7d7e4"

      def install
        bin.install "guardian"
      end
    end
    on_arm do
      url "https://github.com/goto/guardian/releases/download/v0.12.9-beta.4/guardian_0.12.9-beta.4_Darwin_arm64.tar.gz"
      sha256 "5d484c3306121af1a6693760beb58bbaefd81d84c310fb2100a9adacfb4b3369"

      def install
        bin.install "guardian"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/goto/guardian/releases/download/v0.12.9-beta.4/guardian_0.12.9-beta.4_Linux_x86_64.tar.gz"
        sha256 "da7fee99fa4e2a5ed57368e3f36d9d49e9cdf24d39cc8e32adfbb94e523cfcb5"

        def install
          bin.install "guardian"
        end
      end
    end
    on_arm do
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/goto/guardian/releases/download/v0.12.9-beta.4/guardian_0.12.9-beta.4_Linux_arm.tar.gz"
        sha256 "5f75d3b1eb5c80743b1a232705cf268e2f5b1f05b2d8e4fe9a6f3bcc95908b30"

        def install
          bin.install "guardian"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/goto/guardian/releases/download/v0.12.9-beta.4/guardian_0.12.9-beta.4_Linux_arm64.tar.gz"
        sha256 "e72125500b16097e442625b147bf2ad449c62beb013c14abba3b02614c52259e"

        def install
          bin.install "guardian"
        end
      end
    end
  end
end
