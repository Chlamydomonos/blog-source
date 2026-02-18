# PowerShell脚本：在相对目录执行pnpm命令
# 获取脚本所在目录
$ScriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path

# 计算目标目录路径（向上5级目录）
$TargetDir = Join-Path $ScriptDir "../../../../.."

# 解析为绝对路径
$AbsoluteTargetDir = Resolve-Path $TargetDir

# 改变工作目录到目标目录
Push-Location $AbsoluteTargetDir

try {
    # 执行pnpm命令，传递所有接收到的参数
    & pnpm @args

    # 获取pnpm命令的退出码
    $exitCode = $LASTEXITCODE

    # 返回相同的退出码
    exit $exitCode
}
finally {
    # 恢复原始工作目录
    Pop-Location
}