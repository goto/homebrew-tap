# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Guardian < Formula
  desc "Universal data access tool"
  homepage "https://github.com/goto/guardian"
  version "0.11.3"
  license "Apache 2.0"

  depends_on "git"

  on_macos do
    on_intel do
      url "https://github.com/goto/guardian/releases/download/v0.11.3/guardian_0.11.3_Darwin_x86_64.tar.gz"
      sha256 "49d00722f1dd22e1008273edd6207f172facf24a7ac211169f7f2801b24acf48"

      def install
        bin.install "guardian"
      end
    end
    on_arm do
      url "https://github.com/goto/guardian/releases/download/v0.11.3/guardian_0.11.3_Darwin_arm64.tar.gz"
      sha256 "9fbec580c4987a1e0e4b53f2c2deb5da9e8f254f6529869f18662d732e94be7f"

      def install
        bin.install "guardian"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/goto/guardian/releases/download/v0.11.3/guardian_0.11.3_Linux_x86_64.tar.gz"
        sha256 "1434fd850de65b170dd6d8de8e0db4bb9793d870a74a0612d68e2d6483d2786f"

        def install
          bin.install "guardian"
        end
      end
    end
    on_arm do
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/goto/guardian/releases/download/v0.11.3/guardian_0.11.3_Linux_arm.tar.gz"
        sha256 "f5f90748a80ab34f48a2d03420897ff6b1540a6ea1da93b72a02e35f49aecd80"

        def install
          bin.install "guardian"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/goto/guardian/releases/download/v0.11.3/guardian_0.11.3_Linux_arm64.tar.gz"
        sha256 "19512330055c8f16f13883e98680c5c79b8dbcc646da81509e05214b1ff3d771"

        def install
          bin.install "guardian"
        end
      end
    end
  end
end
