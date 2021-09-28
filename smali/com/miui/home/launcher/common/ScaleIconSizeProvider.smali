.class public Lcom/miui/home/launcher/common/ScaleIconSizeProvider;
.super Ljava/lang/Object;
.source "ScaleIconSizeProvider.java"

# interfaces
.implements Lcom/miui/home/launcher/common/IconSizeProvider;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mScale:F

.field private mThemeCompat:Lcom/miui/home/launcher/compat/LauncherThemeCompat;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    invoke-static {p1}, Lcom/miui/home/launcher/compat/LauncherThemeCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/compat/LauncherThemeCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/common/ScaleIconSizeProvider;->mThemeCompat:Lcom/miui/home/launcher/compat/LauncherThemeCompat;

    .line 14
    iput-object p1, p0, Lcom/miui/home/launcher/common/ScaleIconSizeProvider;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getFolderPreviewHeight()I
    .locals 2

    .line 33
    iget-object v0, p0, Lcom/miui/home/launcher/common/ScaleIconSizeProvider;->mThemeCompat:Lcom/miui/home/launcher/compat/LauncherThemeCompat;

    invoke-virtual {v0}, Lcom/miui/home/launcher/compat/LauncherThemeCompat;->getFolderPreviewHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/miui/home/launcher/common/ScaleIconSizeProvider;->mScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getFolderPreviewItemPadding()I
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/miui/home/launcher/common/ScaleIconSizeProvider;->mThemeCompat:Lcom/miui/home/launcher/compat/LauncherThemeCompat;

    invoke-virtual {v0}, Lcom/miui/home/launcher/compat/LauncherThemeCompat;->getFolderPreviewItemPadding()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/miui/home/launcher/common/ScaleIconSizeProvider;->mScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getFolderPreviewWidth()I
    .locals 2

    .line 28
    iget-object v0, p0, Lcom/miui/home/launcher/common/ScaleIconSizeProvider;->mThemeCompat:Lcom/miui/home/launcher/compat/LauncherThemeCompat;

    invoke-virtual {v0}, Lcom/miui/home/launcher/compat/LauncherThemeCompat;->getFolderPreviewWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/miui/home/launcher/common/ScaleIconSizeProvider;->mScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getLauncherIconHeight()I
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/miui/home/launcher/common/ScaleIconSizeProvider;->mThemeCompat:Lcom/miui/home/launcher/compat/LauncherThemeCompat;

    invoke-virtual {v0}, Lcom/miui/home/launcher/compat/LauncherThemeCompat;->getLauncherIconHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/miui/home/launcher/common/ScaleIconSizeProvider;->mScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getLauncherIconWidth()I
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/miui/home/launcher/common/ScaleIconSizeProvider;->mThemeCompat:Lcom/miui/home/launcher/compat/LauncherThemeCompat;

    invoke-virtual {v0}, Lcom/miui/home/launcher/compat/LauncherThemeCompat;->getLauncherIconWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/miui/home/launcher/common/ScaleIconSizeProvider;->mScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getScale()F
    .locals 1

    .line 18
    iget v0, p0, Lcom/miui/home/launcher/common/ScaleIconSizeProvider;->mScale:F

    return v0
.end method

.method public setScale(F)V
    .locals 0

    .line 22
    iput p1, p0, Lcom/miui/home/launcher/common/ScaleIconSizeProvider;->mScale:F

    .line 23
    iget-object p1, p0, Lcom/miui/home/launcher/common/ScaleIconSizeProvider;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->calcIconSize(Landroid/content/res/Resources;)V

    return-void
.end method
