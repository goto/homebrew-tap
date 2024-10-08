# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Shield < Formula
  desc "Identity and authorization system"
  homepage "https://github.com/goto/shield"
  version "0.6.35"
  license "Apache 2.0"

  depends_on "git"

  on_macos do
    on_intel do
      url "https://github.com/goto/shield/releases/download/v0.6.35/shield_Darwin_x86_64.tar.gz"
      sha256 "a8438f808a7ca0b3646577d578313c2aba8924fa3f0eff76a28630bacfc5dc21"

      def install
        bin.install "shield"
      end
    end
    on_arm do
      url "https://github.com/goto/shield/releases/download/v0.6.35/shield_Darwin_arm64.tar.gz"
      sha256 "13bbf7117cf74d339bd24efb76df6f5f0ed38026c02be237b15a83f31f70915d"

      def install
        bin.install "shield"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/goto/shield/releases/download/v0.6.35/shield_Linux_x86_64.tar.gz"
        sha256 "9f0c7e816077bcb10c6b92ee8413971f3e60c50c649d1a95acfa2c17c90751cb"

        def install
          bin.install "shield"
        end
      end
    end
    on_arm do
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/goto/shield/releases/download/v0.6.35/shield_Linux_arm.tar.gz"
        sha256 "157d64374c5faf7837207f211faf3cffafe91503167982358a3d8dfea493c810"

        def install
          bin.install "shield"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/goto/shield/releases/download/v0.6.35/shield_Linux_arm64.tar.gz"
        sha256 "5ea50a2b1b840e1c566ba10a4b4b163c0042f05d010411ecc51fade2aac689ee"

        def install
          bin.install "shield"
        end
      end
    end
  end
end
