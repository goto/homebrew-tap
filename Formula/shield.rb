# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Shield < Formula
  desc "Identity and authorization system"
  homepage "https://github.com/goto/shield"
  version "0.6.28"
  license "Apache 2.0"

  depends_on "git"

  on_macos do
    on_intel do
      url "https://github.com/goto/shield/releases/download/v0.6.28/shield_Darwin_x86_64.tar.gz"
      sha256 "46a7b0bfbf6f34da2d71b424f49b5bd460563ba757ad7895f17cfb9c16a23686"

      def install
        bin.install "shield"
      end
    end
    on_arm do
      url "https://github.com/goto/shield/releases/download/v0.6.28/shield_Darwin_arm64.tar.gz"
      sha256 "f415eba8786251f33d6dbc552f0301a31b7d6227e7ec53fcdf4e8234cea3de98"

      def install
        bin.install "shield"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/goto/shield/releases/download/v0.6.28/shield_Linux_x86_64.tar.gz"
        sha256 "90702420ba11b093b36896bf78386cc4ca17cb29cf29937d7ed9e3c71e5cffb8"

        def install
          bin.install "shield"
        end
      end
    end
    on_arm do
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/goto/shield/releases/download/v0.6.28/shield_Linux_arm.tar.gz"
        sha256 "927266b4f292a1f31cc6000c33b8c96d670315060933686632a8550c1558f911"

        def install
          bin.install "shield"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/goto/shield/releases/download/v0.6.28/shield_Linux_arm64.tar.gz"
        sha256 "a5669897af997f10686baa0dc0ff118936d37bc34f32c782ec01ab7eeecc934d"

        def install
          bin.install "shield"
        end
      end
    end
  end
end
