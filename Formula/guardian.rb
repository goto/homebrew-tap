# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Guardian < Formula
  desc "Universal data access tool"
  homepage "https://github.com/goto/guardian"
  version "0.12.9-alpha.1"
  license "Apache 2.0"

  depends_on "git"

  on_macos do
    on_intel do
      url "https://github.com/goto/guardian/releases/download/v0.12.9-alpha.1/guardian_0.12.9-alpha.1_Darwin_x86_64.tar.gz"
      sha256 "487e8a4cfb6204ac7a0e49f791c8a3b2fd9c351e6cf1105e756c9a23d8102a7e"

      def install
        bin.install "guardian"
      end
    end
    on_arm do
      url "https://github.com/goto/guardian/releases/download/v0.12.9-alpha.1/guardian_0.12.9-alpha.1_Darwin_arm64.tar.gz"
      sha256 "68fc0fc62cbdc34b4b46f4b796110ad0250748a0db0a51e04ea42c3d7e77a18c"

      def install
        bin.install "guardian"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/goto/guardian/releases/download/v0.12.9-alpha.1/guardian_0.12.9-alpha.1_Linux_x86_64.tar.gz"
        sha256 "1b0dc359ff92237009272e51b604f5f0552e55578710ee86d5dc3cb6bab4bc6c"

        def install
          bin.install "guardian"
        end
      end
    end
    on_arm do
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/goto/guardian/releases/download/v0.12.9-alpha.1/guardian_0.12.9-alpha.1_Linux_arm.tar.gz"
        sha256 "6982b0067ce5400acca3c55aa38e5ac898449983c115b8fa7b568764213e7cf5"

        def install
          bin.install "guardian"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/goto/guardian/releases/download/v0.12.9-alpha.1/guardian_0.12.9-alpha.1_Linux_arm64.tar.gz"
        sha256 "7e9b14194914269d264cb0ce7d90e53427eac1d6bfd21a2202baf21ba24a476d"

        def install
          bin.install "guardian"
        end
      end
    end
  end
end
