class Cloudslash < Formula
  desc "Autonomous infrastructure optimization and waste remediation platform"
  homepage "https://github.com/DrSkyle/CloudSlash"
  version "v2.0.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/DrSkyle/CloudSlash/releases/download/v2.0.0/cloudslash_darwin_amd64"
      sha256 "REPLACE_WITH_SHA256_HASH_OF_DARWIN_AMD64"
    elsif Hardware::CPU.arm?
      url "https://github.com/DrSkyle/CloudSlash/releases/download/v2.0.0/cloudslash_darwin_arm64"
      sha256 "REPLACE_WITH_SHA256_HASH_OF_DARWIN_ARM64"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/DrSkyle/CloudSlash/releases/download/v2.0.0/cloudslash_linux_amd64"
      sha256 "REPLACE_WITH_SHA256_HASH_OF_LINUX_AMD64"
    elsif Hardware::CPU.arm?
      url "https://github.com/DrSkyle/CloudSlash/releases/download/v2.0.0/cloudslash_linux_arm64"
      sha256 "REPLACE_WITH_SHA256_HASH_OF_LINUX_ARM64"
    end
  end

  def install
    bin.install Dir["cloudslash_*"].first => "cloudslash"
  end

  test do
    system "#{bin}/cloudslash", "--version"
  end
end
