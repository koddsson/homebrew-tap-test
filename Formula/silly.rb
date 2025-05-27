class Silly < Formula
  desc 'Just a silly little Formula'
  homepage 'https://github.com/koddsson/homebrew-tap-test'
  url "file://#{Pathname(__FILE__).dirname.parent}/script/tap-test"
  version '1'
  sha256 '46fd63013c5a7855d0fbe9f9e95e28ddf977cdf80f24faf4e23782a2e49d5aab'
  license 'BSD-3-Clause'

  def install
    bin.install 'tap-test'
  end

  test do
    assert_equal 'Hello!', shell_output("#{bin}/tap-test").strip
  end
end
