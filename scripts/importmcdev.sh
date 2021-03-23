nms="net/minecraft"
        mkdir -p "$(dirname "$target")"
files=$(cat "$basedir/Spigot-Server-Patches/"* | grep "+++ b/src/main/java/net/minecraft/" | sort | uniq | sed 's/\+\+\+ b\/src\/main\/java\/net\/minecraft\///g')
nonnms=$(grep -R "new file mode" -B 1 "$basedir/Spigot-Server-Patches/" | grep -v "new file mode" | grep -oE --color=none "net\/minecraft\/.*.java" | sed 's/.*\/net\/minecraft\///g')
		if [ ! -f "$workdir/Spigot/Spigot-Server/src/main/java/net/minecraft/$f" ]; then
      f="$(echo "$f" | sed 's/.java//g')"
				error=true
if [ -n "$error" ]; then
  exit 1
fi
$gitcmd add . --force -A >/dev/null 2>&1