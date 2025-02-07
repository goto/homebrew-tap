# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Guardian < Formula
  desc "Universal data access tool"
  homepage "https://github.com/goto/guardian"
  version "0.12.6-alpha.13"
  license "Apache 2.0"

  depends_on "git"

  on_macos do
    on_intel do
      url "https://github.com/goto/guardian/releases/download/v0.12.6-alpha.13/guardian_0.12.6-alpha.13_Darwin_x86_64.tar.gz"
      sha256 "97b8941177df1d3220e13a0fc0aa50f2aa43f59a8a949a976c17f14b7e272e96"

      def install
        bin.install "guardian"
      end
    end
    on_arm do
      url "https://github.com/goto/guardian/releases/download/v0.12.6-alpha.13/guardian_0.12.6-alpha.13_Darwin_arm64.tar.gz"
      sha256 "33a63e3391fdd3f848faf843de1e533309819544912dc4002f11788a59d82b10"

      def install
        bin.install "guardian"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/goto/guardian/releases/download/v0.12.6-alpha.13/guardian_0.12.6-alpha.13_Linux_x86_64.tar.gz"
        sha256 "e26b40f0a2b629f53a549bdd572dc395aece189d90f42fce6787ee974888862d"

        def install
          bin.install "guardian"
        end
      end
    end
    on_arm do
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/goto/guardian/releases/download/v0.12.6-alpha.13/guardian_0.12.6-alpha.13_Linux_arm.tar.gz"
        sha256 "8d717dd11a8b99edb49a8f39731037e9b820013996a58f0ec9e948039c4106ed"

        def install
          bin.install "guardian"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/goto/guardian/releases/download/v0.12.6-alpha.13/guardian_0.12.6-alpha.13_Linux_arm64.tar.gz"
        sha256 "dfb39b4cc04c2d617723883848db1ae11b56957657cee24b5f80831babcfbe36"

        def install
          bin.install "guardian"
        end
      end
    end
  end
end
