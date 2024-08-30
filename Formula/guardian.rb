# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Guardian < Formula
  desc "Universal data access tool"
  homepage "https://github.com/goto/guardian"
  version "0.12.2-beta.5"
  license "Apache 2.0"

  depends_on "git"

  on_macos do
    on_intel do
      url "https://github.com/goto/guardian/releases/download/v0.12.2-beta.5/guardian_0.12.2-beta.5_Darwin_x86_64.tar.gz"
      sha256 "f410337fbd26e6bdd103eb927044d9658e46fd421ebcfbbf015aa2f3a06a4646"

      def install
        bin.install "guardian"
      end
    end
    on_arm do
      url "https://github.com/goto/guardian/releases/download/v0.12.2-beta.5/guardian_0.12.2-beta.5_Darwin_arm64.tar.gz"
      sha256 "58d7f5dd5b15d2b90f035b0f89d29f59d380f7f36a5e7793a3ce340089815e63"

      def install
        bin.install "guardian"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/goto/guardian/releases/download/v0.12.2-beta.5/guardian_0.12.2-beta.5_Linux_x86_64.tar.gz"
        sha256 "585748ebadb196d7c05977e4139973043b46a1653508d286659deeaa0cf8bf3e"

        def install
          bin.install "guardian"
        end
      end
    end
    on_arm do
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/goto/guardian/releases/download/v0.12.2-beta.5/guardian_0.12.2-beta.5_Linux_arm.tar.gz"
        sha256 "be55bf7d7b36808ac78e6ffb39106eed6b308691029a3bdb48ebf864b9ce78e7"

        def install
          bin.install "guardian"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/goto/guardian/releases/download/v0.12.2-beta.5/guardian_0.12.2-beta.5_Linux_arm64.tar.gz"
        sha256 "15577abced206ddf48ce8dc5f5bba82b57f2be670adc44554649f937feeced4a"

        def install
          bin.install "guardian"
        end
      end
    end
  end
end
