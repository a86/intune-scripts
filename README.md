Deploying Batch Scripts using Intune

- Run IExpress (windows default app) as administrator
- Welcome page: Create new Self Extraction Directive file
- Package purpose: Extract files and run an installation command
- Package title: Name you package (not important)
- Confirmation prompt: no prompt
- License agreement: Do not display a license
- Packaged files: add the file(s) you want to package (including .bat script)
- Install program to launch: Install program: cmd.exe /c <script>.bat
- Show window: Hidden
- Finished message: No message
- Package Name and Options: browse where you want your exe to be saved. Check the options "Hide File Extracting Progress Animation from User" & "Store files using Long File Name inside Package"
- Configure restart: Only restart if needed
- Save Self Extracting Directive: browse where you want your SED file to be saved.
- Create package