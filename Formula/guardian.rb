# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Guardian < Formula
  desc "Universal data access tool"
  homepage "https://github.com/goto/guardian"
  version "0.11.0-alpha.1"
  license "Apache 2.0"

  depends_on "git"

  on_macos do
    on_intel do
      url "https://github.com/goto/guardian/releases/download/v0.11.0-alpha.1/guardian_0.11.0-alpha.1_Darwin_x86_64.tar.gz"
      sha256 "09b74e112f7e55355c5ce61d6909a726efa79ff9e98e1ca453efe8859dc18202"

      def install
        bin.install "guardian"
      end
    end
    on_arm do
      url "https://github.com/goto/guardian/releases/download/v0.11.0-alpha.1/guardian_0.11.0-alpha.1_Darwin_arm64.tar.gz"
      sha256 "2a13f737375add7a9b886666723717feefb93e63a5ab7ce880e3f53455b559d9"

      def install
        bin.install "guardian"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/goto/guardian/releases/download/v0.11.0-alpha.1/guardian_0.11.0-alpha.1_Linux_x86_64.tar.gz"
        sha256 "967b6fd4dd2926925d2131d9767c1dc7481abad6940ca3522bd62fe8997bb64f"

        def install
          bin.install "guardian"
        end
      end
    end
    on_arm do
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/goto/guardian/releases/download/v0.11.0-alpha.1/guardian_0.11.0-alpha.1_Linux_arm.tar.gz"
        sha256 "e869bc85236c14262c4b9b8e9dbba5c61f038725865a65e6023104df28f917a9"

        def install
          bin.install "guardian"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/goto/guardian/releases/download/v0.11.0-alpha.1/guardian_0.11.0-alpha.1_Linux_arm64.tar.gz"
        sha256 "e5df7ad5219c9ade26061bf2893ae289f95e8ccd49a3af400f71b1b440f8d179"

        def install
          bin.install "guardian"
        end
      end
    end
  end
end
