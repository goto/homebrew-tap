# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Guardian < Formula
  desc "Universal data access tool"
  homepage "https://github.com/goto/guardian"
  version "0.12.3-beta.2"
  license "Apache 2.0"

  depends_on "git"

  on_macos do
    on_intel do
      url "https://github.com/goto/guardian/releases/download/v0.12.3-beta.2/guardian_0.12.3-beta.2_Darwin_x86_64.tar.gz"
      sha256 "5e287ca261313faf4db35f59ab10f02e248001a1366053656086c3aaab709090"

      def install
        bin.install "guardian"
      end
    end
    on_arm do
      url "https://github.com/goto/guardian/releases/download/v0.12.3-beta.2/guardian_0.12.3-beta.2_Darwin_arm64.tar.gz"
      sha256 "e3aeed274fac392daa7fbc7a22afcb19f1c93adb81d92bd49bead8661c98f45a"

      def install
        bin.install "guardian"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/goto/guardian/releases/download/v0.12.3-beta.2/guardian_0.12.3-beta.2_Linux_x86_64.tar.gz"
        sha256 "dadae8204628518391b71f0f53e2c4cdf4f47c368f2b270f67ddd09e94c8ec19"

        def install
          bin.install "guardian"
        end
      end
    end
    on_arm do
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/goto/guardian/releases/download/v0.12.3-beta.2/guardian_0.12.3-beta.2_Linux_arm.tar.gz"
        sha256 "c8bed6e6de6bb7e323fb3f3299c46e6c30762fb0dbceca418447bc2c1bdbd42c"

        def install
          bin.install "guardian"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/goto/guardian/releases/download/v0.12.3-beta.2/guardian_0.12.3-beta.2_Linux_arm64.tar.gz"
        sha256 "45a309c7b9d5b5e60c5fad129248b6f79ef74a1ea59b528e57cd0127e5fd9d17"

        def install
          bin.install "guardian"
        end
      end
    end
  end
end
