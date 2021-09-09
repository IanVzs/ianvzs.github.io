hexo clean
hexo generate
mkdir public/_blog -p
cp _config.landscape.yml public/_blog/
cp _config.yml public/_blog/
cp db.json public/_blog/
cp deploy.sh public/_blog/
cp package.json public/_blog/
cp scaffolds -r  public/_blog/
cp source -r  public/_blog/
cp README.md public/
git commit -am "new deploy"
git push origin dev
hexo deploy
