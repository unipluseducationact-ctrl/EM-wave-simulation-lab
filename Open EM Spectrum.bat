@echo off
REM Save em-spectrum.html as UTF-8 in your editor (not UTF-16).
REM Ensure HTML is UTF-8 (fixes garbled/raw-text display in browser)
powershell -NoProfile -ExecutionPolicy Bypass -Command "$p='%~dp0em-spectrum.html';$b=[IO.File]::ReadAllBytes($p);if($b.Length -gt 3 -and $b[1]-eq 0){$c=[Text.Encoding]::Unicode.GetString($b);[IO.File]::WriteAllText($p,$c,(New-Object Text.UTF8Encoding $false))}"
start "" "%~dp0em-spectrum.html"
