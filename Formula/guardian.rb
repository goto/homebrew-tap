# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Guardian < Formula
  desc "Universal data access tool"
  homepage "https://github.com/goto/guardian"
  version "0.12.10"
  license "Apache 2.0"

  depends_on "git"

  on_macos do
    on_intel do
      url "https://github.com/goto/guardian/releases/download/v0.12.10/guardian_0.12.10_Darwin_x86_64.tar.gz"
      sha256 "4d7e59326f09375fcdc680350938147c0cb13e935a2a0559f73a5acf9eb01c4c"

      def install
        bin.install "guardian"
      end
    end
    on_arm do
      url "https://github.com/goto/guardian/releases/download/v0.12.10/guardian_0.12.10_Darwin_arm64.tar.gz"
      sha256 "e882c449b9b93736a5f359387424b9896caca2be360aa8158a2e96792d74eba1"

      def install
        bin.install "guardian"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/goto/guardian/releases/download/v0.12.10/guardian_0.12.10_Linux_x86_64.tar.gz"
        sha256 "5fd0586bb4cc5244f8e045482fe92f674044f1616ced8312f57dc98027aadb2e"

        def install
          bin.install "guardian"
        end
      end
    end
    on_arm do
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/goto/guardian/releases/download/v0.12.10/guardian_0.12.10_Linux_arm.tar.gz"
        sha256 "01abaeb496d69313045a0f507dd412ee115276491b639a485739c8c188b5133b"

        def install
          bin.install "guardian"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/goto/guardian/releases/download/v0.12.10/guardian_0.12.10_Linux_arm64.tar.gz"
        sha256 "f48b4ec831de54c6a78311525f1a41c0dcc7655c8e9a8b057982cfb0334b3430"

        def install
          bin.install "guardian"
        end
      end
    end
  end
end
