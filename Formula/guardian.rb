# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Guardian < Formula
  desc "Universal data access tool"
  homepage "https://github.com/goto/guardian"
  version "0.12.11-alpha.3"
  license "Apache 2.0"

  depends_on "git"

  on_macos do
    on_intel do
      url "https://github.com/goto/guardian/releases/download/v0.12.11-alpha.3/guardian_0.12.11-alpha.3_Darwin_x86_64.tar.gz"
      sha256 "7168429afdbcaf8e7ea6611071530030203f6ad85ac51372e9926605fd02ab66"

      def install
        bin.install "guardian"
      end
    end
    on_arm do
      url "https://github.com/goto/guardian/releases/download/v0.12.11-alpha.3/guardian_0.12.11-alpha.3_Darwin_arm64.tar.gz"
      sha256 "acb89803304eb4aa2209887b53e10f2ea75291c102590f38f6230fbc4d3b1d0e"

      def install
        bin.install "guardian"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/goto/guardian/releases/download/v0.12.11-alpha.3/guardian_0.12.11-alpha.3_Linux_x86_64.tar.gz"
        sha256 "e91ea18a0aecf5bab32375cddab29a10a1fca2ac6e41e653eb78c91febb50788"

        def install
          bin.install "guardian"
        end
      end
    end
    on_arm do
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/goto/guardian/releases/download/v0.12.11-alpha.3/guardian_0.12.11-alpha.3_Linux_arm.tar.gz"
        sha256 "866492bf2248a069e3724de735ad57f601f43fa0e466031bec1fc9dfa5b9d1ca"

        def install
          bin.install "guardian"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/goto/guardian/releases/download/v0.12.11-alpha.3/guardian_0.12.11-alpha.3_Linux_arm64.tar.gz"
        sha256 "e5e3b2e6069e5eaeda9066ff425188d121b18c02ac49a38a53a1987a298d1644"

        def install
          bin.install "guardian"
        end
      end
    end
  end
end
