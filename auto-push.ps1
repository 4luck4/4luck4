# Автоматический коммит и пуш изменений
Write-Host "🔄 Проверка изменений..." -ForegroundColor Cyan

# Добавить все изменения
git add .

# Проверить, есть ли изменения
$status = git status --porcelain
if ($status) {
    # Создать коммит с текущей датой и временем
    $commitMessage = "Auto update: $(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')"
    git commit -m $commitMessage
    
    Write-Host "✅ Коммит создан: $commitMessage" -ForegroundColor Green
    
    # Пушить изменения
    Write-Host "📤 Отправка на GitHub..." -ForegroundColor Cyan
    git push
    
    Write-Host "✅ Изменения отправлены на GitHub!" -ForegroundColor Green
} else {
    Write-Host "ℹ️  Нет изменений для коммита" -ForegroundColor Yellow
}
