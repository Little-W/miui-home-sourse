.class public Lcom/miui/home/launcher/multiselect/TopMenuColor;
.super Ljava/lang/Object;
.source "TopMenuColor.java"

# interfaces
.implements Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;


# instance fields
.field private mCurrentImageViewColor:I

.field private mCurrentTextViewColor:I

.field private final mImageViewDarkColor:I

.field private final mImageViewLightColor:I

.field private final mTextViewDarkColor:I

.field private final mTextViewLightColor:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-static {p1}, Lcom/miui/home/launcher/multiselect/TopMenuColor;->getColorByResId(I)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/multiselect/TopMenuColor;->mTextViewLightColor:I

    iput p1, p0, Lcom/miui/home/launcher/multiselect/TopMenuColor;->mImageViewLightColor:I

    .line 18
    invoke-static {p2}, Lcom/miui/home/launcher/multiselect/TopMenuColor;->getColorByResId(I)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/multiselect/TopMenuColor;->mTextViewDarkColor:I

    iput p1, p0, Lcom/miui/home/launcher/multiselect/TopMenuColor;->mImageViewDarkColor:I

    .line 19
    invoke-virtual {p0}, Lcom/miui/home/launcher/multiselect/TopMenuColor;->onWallpaperColorChanged()V

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-static {p1}, Lcom/miui/home/launcher/multiselect/TopMenuColor;->getColorByResId(I)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/multiselect/TopMenuColor;->mImageViewLightColor:I

    .line 24
    invoke-static {p2}, Lcom/miui/home/launcher/multiselect/TopMenuColor;->getColorByResId(I)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/multiselect/TopMenuColor;->mImageViewDarkColor:I

    .line 25
    invoke-static {p3}, Lcom/miui/home/launcher/multiselect/TopMenuColor;->getColorByResId(I)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/multiselect/TopMenuColor;->mTextViewLightColor:I

    .line 26
    invoke-static {p4}, Lcom/miui/home/launcher/multiselect/TopMenuColor;->getColorByResId(I)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/multiselect/TopMenuColor;->mTextViewDarkColor:I

    .line 27
    invoke-virtual {p0}, Lcom/miui/home/launcher/multiselect/TopMenuColor;->onWallpaperColorChanged()V

    return-void
.end method

.method private static getColorByResId(I)I
    .locals 1

    .line 39
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    return p0
.end method


# virtual methods
.method public getImageViewColor()I
    .locals 0

    .line 35
    iget p0, p0, Lcom/miui/home/launcher/multiselect/TopMenuColor;->mCurrentImageViewColor:I

    return p0
.end method

.method public getTextViewColor()I
    .locals 0

    .line 31
    iget p0, p0, Lcom/miui/home/launcher/multiselect/TopMenuColor;->mCurrentTextViewColor:I

    return p0
.end method

.method public onWallpaperColorChanged()V
    .locals 1

    .line 44
    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->hasAppliedLightWallpaper()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/miui/home/launcher/multiselect/TopMenuColor;->mTextViewDarkColor:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/miui/home/launcher/multiselect/TopMenuColor;->mTextViewLightColor:I

    :goto_0
    iput v0, p0, Lcom/miui/home/launcher/multiselect/TopMenuColor;->mCurrentTextViewColor:I

    .line 45
    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->hasAppliedLightWallpaper()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/miui/home/launcher/multiselect/TopMenuColor;->mImageViewDarkColor:I

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/miui/home/launcher/multiselect/TopMenuColor;->mImageViewLightColor:I

    :goto_1
    iput v0, p0, Lcom/miui/home/launcher/multiselect/TopMenuColor;->mCurrentImageViewColor:I

    return-void
.end method
