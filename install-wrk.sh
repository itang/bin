(
cd ~/Downloads
rm -rf wrk
git clone https://github.com/wg/wrk.git --depth=1

sudo apt-get install libssl-dev

cd wrk && make
mkdir ~/dev-env/tools 
cp wrk ~/dev-env/tools

wrk --version
)
