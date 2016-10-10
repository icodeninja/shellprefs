MYWD=`exec 2>/dev/null;cd -- $(dirname "$0"); unset PWD; /usr/bin/pwd || /bin/pwd || pwd`

cd $MYWD

files=( "vimrc" "tmux.conf" "zshrc" "gitconfig" )

echo $MYWD

for i in "${files[@]}"
do
	newfile="$MYWD/$i"
	existing="$HOME/.$i"
	oldfile="$HOME/.$i.old"
	if [ -f $existing ] 
	then
			mv $existing $oldfile
	fi
	cp $newfile $existing
done

cd $MYWD
