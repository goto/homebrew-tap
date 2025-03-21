# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Guardian < Formula
  desc "Universal data access tool"
  homepage "https://github.com/goto/guardian"
  version "0.12.11-alpha.2"
  license "Apache 2.0"

  depends_on "git"

  on_macos do
    on_intel do
      url "https://github.com/goto/guardian/releases/download/v0.12.11-alpha.2/guardian_0.12.11-alpha.2_Darwin_x86_64.tar.gz"
      sha256 "05e2b952aa8b1c1286d975a9b2528b35aebc52863a32769bd47e05bf476e54ee"

      def install
        bin.install "guardian"
      end
    end
    on_arm do
      url "https://github.com/goto/guardian/releases/download/v0.12.11-alpha.2/guardian_0.12.11-alpha.2_Darwin_arm64.tar.gz"
      sha256 "e86b9c10c6da71f0cd9d38da7d4ed7bc7cbf79567b565caa357a5eef0be1ca2e"

      def install
        bin.install "guardian"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/goto/guardian/releases/download/v0.12.11-alpha.2/guardian_0.12.11-alpha.2_Linux_x86_64.tar.gz"
        sha256 "624a6dc9f8767ebf51262870e03bc6b824ffa47f6a9a242699916d26276d1fe4"

        def install
          bin.install "guardian"
        end
      end
    end
    on_arm do
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/goto/guardian/releases/download/v0.12.11-alpha.2/guardian_0.12.11-alpha.2_Linux_arm.tar.gz"
        sha256 "c3b976405e84034989e5547f9908c8b283693d31b78d804597c64ef42268263e"

        def install
          bin.install "guardian"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/goto/guardian/releases/download/v0.12.11-alpha.2/guardian_0.12.11-alpha.2_Linux_arm64.tar.gz"
        sha256 "d02c699b7d27a795c4697525de215845bce9ddd0275505d8c439da2209a1b50b"

        def install
          bin.install "guardian"
        end
      end
    end
  end
end
