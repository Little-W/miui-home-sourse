.class Lcom/miui/home/launcher/wallpaper/DesktopWallpaperInfo;
.super Ljava/lang/Object;
.source "DesktopWallpaperInfo.java"


# instance fields
.field private mColorMode:I

.field private mScrollable:Z

.field private mSearchBarColorMode:I

.field private mStatusBarColorMode:I


# direct methods
.method constructor <init>(IIIZ)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p1, p0, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperInfo;->mColorMode:I

    .line 13
    iput p2, p0, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperInfo;->mStatusBarColorMode:I

    .line 14
    iput p3, p0, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperInfo;->mSearchBarColorMode:I

    .line 15
    iput-boolean p4, p0, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperInfo;->mScrollable:Z

    return-void
.end method


# virtual methods
.method getColorMode()I
    .locals 0

    .line 19
    iget p0, p0, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperInfo;->mColorMode:I

    return p0
.end method

.method getSearchBarColorMode()I
    .locals 0

    .line 27
    iget p0, p0, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperInfo;->mSearchBarColorMode:I

    return p0
.end method

.method getStatusBarColorMode()I
    .locals 0

    .line 23
    iget p0, p0, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperInfo;->mStatusBarColorMode:I

    return p0
.end method

.method isScrollable()Z
    .locals 0

    .line 31
    iget-boolean p0, p0, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperInfo;->mScrollable:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DesktopWallpaperInfo{mColorMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperInfo;->mColorMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mStatusBarColorMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperInfo;->mStatusBarColorMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mSearchBarColorMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperInfo;->mSearchBarColorMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mScrollable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperInfo;->mScrollable:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
