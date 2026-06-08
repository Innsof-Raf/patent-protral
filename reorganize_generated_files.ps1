$files = Get-ChildItem -Path lib -Filter *.dart -Recurse | Where-Object { Select-String -Path $_.FullName -Pattern "part\s+['\"][^/]*\.(freezed|g)\.dart['\"];" };
foreach ($file in $files) {
    Write-Host "Processing $($file.FullName)";
    $content = [System.IO.File]::ReadAllText($file.FullName);
    $matches = [regex]::Matches($content, "part\s+['\"](?<gen>[^/]*\.(freezed|g)\.dart)['\"];");
    if ($matches.Count -gt 0) {
        $dir = Split-Path $file.FullName;
        $genDir = Join-Path $dir "generated";
        if (!(Test-Path $genDir)) {
            Write-Host "Creating directory $genDir";
            New-Item -ItemType Directory -Path $genDir | Out-Null;
        };
        foreach ($match in $matches) {
            $genFileName = $match.Groups['gen'].Value;
            $oldPartStmt = $match.Value;
            $newPartStmt = $oldPartStmt.Replace($genFileName, "generated/$genFileName");
            $sourceGenPath = Join-Path $dir $genFileName;
            $destGenPath = Join-Path $genDir $genFileName;
            if (Test-Path $sourceGenPath) {
                Write-Host "Moving $genFileName to generated/";
                Move-Item -Path $sourceGenPath -Destination $destGenPath -Force;
                $genContent = [System.IO.File]::ReadAllText($destGenPath);
                $sourceFileName = Split-Path $file.FullName -Leaf;
                $newGenContent = [regex]::Replace($genContent, "part of\s+['\"]$sourceFileName['\"];", "part of '../$sourceFileName';");
                if ($genContent -eq $newGenContent) {
                    Write-Host "Warning: Could not update 'part of' in $genFileName.";
                } else {
                    [System.IO.File]::WriteAllText($destGenPath, $newGenContent);
                };
                $content = $content.Replace($oldPartStmt, $newPartStmt);
            } else {
                Write-Host "Warning: $sourceGenPath not found.";
            };
        };
        [System.IO.File]::WriteAllText($file.FullName, $content);
    };
};
Write-Host "Done.";
