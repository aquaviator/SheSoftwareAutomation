# SheSoftwareAutomation
I built this suite on my Windows Laptop.
https://rubyinstaller.org/downloads/
rubyinstaller-devkit-3.0.0-1-x64.exe

Versions Used:
capybara (3.35.3)
rspec (3.10.0)
cucumber (5.3.0)
selenium-webdriver (3.142.7)
geckodriver-helper (0.24.0) (Firefox Driver)

open Ruby cmd line & run:
gem install capybara 
gem install rspec 
gem install cucumber 
gem install selenium-webdriver
gem install geckodriver-helper

If you want to colorize command prompt when running cucumber features, you need to install ANSICON because Windows does not understand ANSI color 
escape sequences. In order to download the latest release of ANSICON, go to https://github.com/adoxa/ansicon/downloads.


Edit the Feature file and enter the application password in the |password|  field

locate a drive to work from and clone the repository:


open: "Start Command Prompt with Ruby" or you can start and search for Ruby



Navigate to the "Automation-AndyClarke" Folder and run "cucumber --guess features/AndyClarkeTest.feature"



















