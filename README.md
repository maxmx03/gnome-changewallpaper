# Gnome Change Wallpaper Script

## How to use

```bash
crontab -e
```

wallpaper.sh will run every 30 minutes

```txt
30 * * * * /path/to/wallpaper.sh >> /path/to/log 2>&1
```

see if is everything ok

```bash
crontab -l
```
