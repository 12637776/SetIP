# SetIP.bat
一个更换CloudflareWarp连接端点的批处理文件。
 
适合使用CloudflareWarp上网的用户。配合[https://github.com/peanut996/CloudflareWarpSpeedTest/](https://github.com/peanut996/CloudflareWarpSpeedTest/)生成result.csv使用。
1. 将"SetIP.bat"文件放入"CloudflareWarpSpeedtest.exe"相同目录；
2. 运行"CloudflareWarpSpeedtest.exe"生成"result.csv"；
3. 以管理员模式运行"SetIP.bat"。
4. 当端口有多个的时候，按任意键切换下一个端口，按Ctrl+C或者鼠标关闭窗口结束。
5. 将当前的端口复制到粘贴板，以便在其他地方粘贴使用，譬如Wireguard。
