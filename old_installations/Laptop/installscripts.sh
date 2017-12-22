echo "[Script] installing MyScripts in ~/MyScripts"
cp MyScripts ~/MyScripts -r

echo "[Script] configuring aliases"
echo "alias restartWifi='~/MyScripts/restartWifi.sh'"
echo "[Script] aliases are now:"
aliases
