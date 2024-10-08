# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Shield < Formula
  desc "Identity and authorization system"
  homepage "https://github.com/goto/shield"
  version "0.7.0"
  license "Apache 2.0"

  depends_on "git"

  on_macos do
    on_intel do
      url "https://github.com/goto/shield/releases/download/v0.7.0/shield_Darwin_x86_64.tar.gz"
      sha256 "445b06a24012fae403450fae22fff350cdcdba58d0cad3b0fcebcce42e8ca77c"

      def install
        bin.install "shield"
      end
    end
    on_arm do
      url "https://github.com/goto/shield/releases/download/v0.7.0/shield_Darwin_arm64.tar.gz"
      sha256 "988e3c571a4e9b67e7be6977d397ba9c4c31be543c772e0480a75089d6aa9a2b"

      def install
        bin.install "shield"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/goto/shield/releases/download/v0.7.0/shield_Linux_x86_64.tar.gz"
        sha256 "261ca5d9b5574e1870b5e95d19127ee44c9a6084d3f2ac16b17f035d5aabd236"

        def install
          bin.install "shield"
        end
      end
    end
    on_arm do
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/goto/shield/releases/download/v0.7.0/shield_Linux_arm.tar.gz"
        sha256 "13c82332517557db77c06bd747d74591e0c2ef510b7d537a0234ea53958787b8"

        def install
          bin.install "shield"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/goto/shield/releases/download/v0.7.0/shield_Linux_arm64.tar.gz"
        sha256 "dfb84da76f4bbe087002f975302097e68aedeedaad60482e2f174f40750ff2de"

        def install
          bin.install "shield"
        end
      end
    end
  end
end
