MINICONDA=~/miniconda3/etc/profile.d/conda.sh
MINICONDA_ENV=isolde-cv

source $MINICONDA
conda create --name $MINICONDA_ENV python=3.10 -y 
conda activate  $MINICONDA_ENV
pip3 install torch torchvision  --index-url https://download.pytorch.org/whl/cpu

cho -e "${BOLD_RED}Creating a temporary requirements file excluding torch packages...${NC}"
grep -v -E '^(torch==|torchvision==|torchaudio==)' python-requirements.txt > temp-requirements.txt

# Install the remaining packages from the temporary file
echo "Installing remaining packages..."
pip3 install -r temp-requirements.txt

# Clean up temporary file
echo "Cleaning up..."
rm temp-requirements.txt

echo -e "${BOLD_RED}Environment setup complete!${NC}"
