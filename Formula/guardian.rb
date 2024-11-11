# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Guardian < Formula
  desc "Universal data access tool"
  homepage "https://github.com/goto/guardian"
  version "0.12.6-alpha.3"
  license "Apache 2.0"

  depends_on "git"

  on_macos do
    on_intel do
      url "https://github.com/goto/guardian/releases/download/v0.12.6-alpha.3/guardian_0.12.6-alpha.3_Darwin_x86_64.tar.gz"
      sha256 "78063480cbbee8d58b26b5a6e0c6c49ec289544ece0eefa7a6be06cbf29d8baf"

      def install
        bin.install "guardian"
      end
    end
    on_arm do
      url "https://github.com/goto/guardian/releases/download/v0.12.6-alpha.3/guardian_0.12.6-alpha.3_Darwin_arm64.tar.gz"
      sha256 "864268ae1f6d8cd6284407d274f7ae8e352878e2a619cfbff46824df3a18bf52"

      def install
        bin.install "guardian"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/goto/guardian/releases/download/v0.12.6-alpha.3/guardian_0.12.6-alpha.3_Linux_x86_64.tar.gz"
        sha256 "d7b92b3a3596509cc658ae21c939bc9a82b3a1e1ecb49901ada55c746d90c7a4"

        def install
          bin.install "guardian"
        end
      end
    end
    on_arm do
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/goto/guardian/releases/download/v0.12.6-alpha.3/guardian_0.12.6-alpha.3_Linux_arm.tar.gz"
        sha256 "4018868747afe585bba57a36b4a8d5d95673f02b8fadc14ef4c355232cb73a00"

        def install
          bin.install "guardian"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/goto/guardian/releases/download/v0.12.6-alpha.3/guardian_0.12.6-alpha.3_Linux_arm64.tar.gz"
        sha256 "944da546f18c8e46092b2f0a012d2a7589a9940c336c51d054cc9e47b321ec04"

        def install
          bin.install "guardian"
        end
      end
    end
  end
end
