# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Shield < Formula
  desc "Identity and authorization system"
  homepage "https://github.com/goto/shield"
  version "0.6.24"
  license "Apache 2.0"

  depends_on "git"

  on_macos do
    on_intel do
      url "https://github.com/goto/shield/releases/download/v0.6.24/shield_Darwin_x86_64.tar.gz"
      sha256 "e099a6bae65cd9f951190fae952291d6b2b197bfaa4524dec993038e4aaab132"

      def install
        bin.install "shield"
      end
    end
    on_arm do
      url "https://github.com/goto/shield/releases/download/v0.6.24/shield_Darwin_arm64.tar.gz"
      sha256 "97044796953117f07a42efcc5c12906fe26e4d17645df650e2f0028dc37bb616"

      def install
        bin.install "shield"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/goto/shield/releases/download/v0.6.24/shield_Linux_x86_64.tar.gz"
        sha256 "541e197678b5ecacfb982af4fd23a505085ffa7286a161411e89becee6c556aa"

        def install
          bin.install "shield"
        end
      end
    end
    on_arm do
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/goto/shield/releases/download/v0.6.24/shield_Linux_arm.tar.gz"
        sha256 "84866169a708f84ab49eaee6f793ce346728b6e4c653a7316e370239e013090f"

        def install
          bin.install "shield"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/goto/shield/releases/download/v0.6.24/shield_Linux_arm64.tar.gz"
        sha256 "09f30637c87f6a80732ad644113c3dfac3f9dfcfb0a666dedac3116bef72214c"

        def install
          bin.install "shield"
        end
      end
    end
  end
end
