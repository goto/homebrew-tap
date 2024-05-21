# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Guardian < Formula
  desc "Universal data access tool"
  homepage "https://github.com/goto/guardian"
  version "0.10.1-alpha.1"
  license "Apache 2.0"

  depends_on "git"

  on_macos do
    on_intel do
      url "https://github.com/goto/guardian/releases/download/v0.10.1-alpha.1/guardian_0.10.1-alpha.1_Darwin_x86_64.tar.gz"
      sha256 "c5ac770473903cbc26f9495f257d6d2b48e57845beaf2c16b07bb329ce4e534e"

      def install
        bin.install "guardian"
      end
    end
    on_arm do
      url "https://github.com/goto/guardian/releases/download/v0.10.1-alpha.1/guardian_0.10.1-alpha.1_Darwin_arm64.tar.gz"
      sha256 "f6c85fbbcdf116e4b20e100bbc73926abf25ec9b9b406d7e9ae9fad51843682a"

      def install
        bin.install "guardian"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/goto/guardian/releases/download/v0.10.1-alpha.1/guardian_0.10.1-alpha.1_Linux_x86_64.tar.gz"
        sha256 "e97c60bc8da2d5ebc84de518fe86c90c2259cdd32786e5848acb0df71eb2ba0c"

        def install
          bin.install "guardian"
        end
      end
    end
    on_arm do
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/goto/guardian/releases/download/v0.10.1-alpha.1/guardian_0.10.1-alpha.1_Linux_arm.tar.gz"
        sha256 "ad5833bfd4957520ac05782c14c15dba8120f3257273754db6125fb726c7ca2d"

        def install
          bin.install "guardian"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/goto/guardian/releases/download/v0.10.1-alpha.1/guardian_0.10.1-alpha.1_Linux_arm64.tar.gz"
        sha256 "49ca577b0451aa8bbdc740521e0ddfec0501ec9acce995b4553ff9cb50d3911b"

        def install
          bin.install "guardian"
        end
      end
    end
  end
end
