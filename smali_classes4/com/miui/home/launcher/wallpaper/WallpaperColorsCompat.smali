.class public Lcom/miui/home/launcher/wallpaper/WallpaperColorsCompat;
.super Ljava/lang/Object;
.source "WallpaperColorsCompat.java"


# instance fields
.field private final mColorHints:I

.field private final mPrimaryColor:I

.field private final mSecondaryColor:I

.field private final mTertiaryColor:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput p1, p0, Lcom/miui/home/launcher/wallpaper/WallpaperColorsCompat;->mPrimaryColor:I

    .line 23
    iput p2, p0, Lcom/miui/home/launcher/wallpaper/WallpaperColorsCompat;->mSecondaryColor:I

    .line 24
    iput p3, p0, Lcom/miui/home/launcher/wallpaper/WallpaperColorsCompat;->mTertiaryColor:I

    .line 25
    iput p4, p0, Lcom/miui/home/launcher/wallpaper/WallpaperColorsCompat;->mColorHints:I

    return-void
.end method


# virtual methods
.method public getColorHints()I
    .locals 0

    .line 41
    iget p0, p0, Lcom/miui/home/launcher/wallpaper/WallpaperColorsCompat;->mColorHints:I

    return p0
.end method

.method public getColorMode()I
    .locals 1

    .line 45
    iget p0, p0, Lcom/miui/home/launcher/wallpaper/WallpaperColorsCompat;->mColorHints:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getPrimaryColor()I
    .locals 0

    .line 29
    iget p0, p0, Lcom/miui/home/launcher/wallpaper/WallpaperColorsCompat;->mPrimaryColor:I

    return p0
.end method
