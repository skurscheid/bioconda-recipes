#!/bin/bash
outdir=$PREFIX/share/$PKG_NAME-$PKG_VERSION-$PKG_BUILDNUM
mkdir -p $outdir
mkdir -p $PREFIX/bin
cp -R ./* $outdir/
cp $RECIPE_DIR/igv-webapp.sh $outdir/igv-webapp
cd $outdir
npm install
grunt
chmod +x $outdir/igv-webapp
ln -s $outdir/igv-webapp $PREFIX/bin
