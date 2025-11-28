class Slidev < Formula
  desc "Presentation slides for developers"
  homepage "https://sli.dev"
  url "https://registry.npmjs.org/@slidev/cli/-/cli-52.10.0.tgz"
  sha256 "7882bc8212b3eff074f809f210ba02c092422edba596a343cebcd9febf56d145"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", "-ddd", "--global", "--prefix", prefix, libexec
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    system "#{bin}/slidev", "--version"
  end
end