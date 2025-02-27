# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Shield < Formula
  desc "Identity and authorization system"
  homepage "https://github.com/goto/shield"
  version "0.6.28-beta-5"
  license "Apache 2.0"

  depends_on "git"

  on_macos do
    on_intel do
      url "https://github.com/goto/shield/releases/download/v0.6.28-beta-5/shield_Darwin_x86_64.tar.gz"
      sha256 "235a4ed5a4a3305218d9feb02ea8a7a6f34a6ae79dc912dcd4c031a0e818bfc3"

      def install
        bin.install "shield"
      end
    end
    on_arm do
      url "https://github.com/goto/shield/releases/download/v0.6.28-beta-5/shield_Darwin_arm64.tar.gz"
      sha256 "5d75a26918acabe209d2f5d3ec1ef782e07841c39a341e86cdb47cf4d73cb13d"

      def install
        bin.install "shield"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/goto/shield/releases/download/v0.6.28-beta-5/shield_Linux_x86_64.tar.gz"
        sha256 "27005266b78dd3d1acadeb2e95220d01899d981e5041e3133f28bed277b15ae8"

        def install
          bin.install "shield"
        end
      end
    end
    on_arm do
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/goto/shield/releases/download/v0.6.28-beta-5/shield_Linux_arm.tar.gz"
        sha256 "a2b0123540a09050135ed1ce044b7142931c4e4d08d78acefb9b3505fd96002f"

        def install
          bin.install "shield"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/goto/shield/releases/download/v0.6.28-beta-5/shield_Linux_arm64.tar.gz"
        sha256 "baaca8fd7b98e0e65d1a6c7311915acff0145ceaf99fc9fe29f5e4b965754004"

        def install
          bin.install "shield"
        end
      end
    end
  end
end
