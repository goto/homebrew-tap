# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Guardian < Formula
  desc "Universal data access tool"
  homepage "https://github.com/goto/guardian"
  version "0.11.2-alpha.4"
  license "Apache 2.0"

  depends_on "git"

  on_macos do
    on_intel do
      url "https://github.com/goto/guardian/releases/download/v0.11.2-alpha.4/guardian_0.11.2-alpha.4_Darwin_x86_64.tar.gz"
      sha256 "bfef5f2a4c1b1806edf9c76527dff236b4af5fa66968e6633d56cc014c00cb96"

      def install
        bin.install "guardian"
      end
    end
    on_arm do
      url "https://github.com/goto/guardian/releases/download/v0.11.2-alpha.4/guardian_0.11.2-alpha.4_Darwin_arm64.tar.gz"
      sha256 "0ae585ea262d341fcf5b18a1cc9ebda409c031ba3d2bcd0710df1dec33566067"

      def install
        bin.install "guardian"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/goto/guardian/releases/download/v0.11.2-alpha.4/guardian_0.11.2-alpha.4_Linux_x86_64.tar.gz"
        sha256 "30d360817e7fdfc9ca513d4952cc6df22522dbdbb132c1a574d3b7a32d2df66e"

        def install
          bin.install "guardian"
        end
      end
    end
    on_arm do
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/goto/guardian/releases/download/v0.11.2-alpha.4/guardian_0.11.2-alpha.4_Linux_arm.tar.gz"
        sha256 "922de0eb180892b3687fb7e55467e3abc07fa9a1e479d76813bf67979dd5b704"

        def install
          bin.install "guardian"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/goto/guardian/releases/download/v0.11.2-alpha.4/guardian_0.11.2-alpha.4_Linux_arm64.tar.gz"
        sha256 "f03f4ab1c732b8db6628cf95bc47130a2b6d9c1dfbd04220471926246b19f227"

        def install
          bin.install "guardian"
        end
      end
    end
  end
end
