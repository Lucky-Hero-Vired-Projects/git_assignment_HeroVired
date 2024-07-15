#On the initial machine

cd git_assignment_HeroVired
# Initialize Git LFS
git lfs install

# Create and switch to the lfs branch
git checkout -b lfs

#Download large file size 200+ MB
sudo wget https://packagecloud.io/pagerduty/rundeck/packages/java/org.rundeck/rundeck-5.4.0-20240618.war/artifacts/rundeck-5.4.0-20240618.war/download?distro_version_id=167
sudo mv 'download?distro_version_id=167' rundeck.war

# Track large files with Git LFS
git lfs track "rundeck.war"

# Add and commit the changes
git add .gitattributes rundeck.war
git commit -m "Add large binary file and track it with Git LFS"

# Push the changes to the lfs branch
git push origin lfs

# On another machine

# Clone the repository
git clone https://github.com/your_username/git_assignment_HeroVired.git
cd git_assignment_HeroVired

# Switch to the lfs branch
git branch -a 
git checkout lfs

# Pull the LFS tracked files
git lfs install   #Initialize Git LFS
git lfs pull

