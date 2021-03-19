.class public Lcom/miui/home/launcher/common/ScaleIconSizeProvider;
.super Ljava/lang/Object;
.source "ScaleIconSizeProvider.java"

# interfaces
.implements Lcom/miui/home/launcher/common/IconSizeProvider;


# instance fields
.field private mScale:F

.field private mThemeCompat:Lcom/miui/home/launcher/compat/LauncherThemeCompat;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    invoke-static {p1}, Lcom/miui/home/launcher/compat/LauncherThemeCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/compat/LauncherThemeCompat;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/common/ScaleIconSizeProvider;->mThemeCompat:Lcom/miui/home/launcher/compat/LauncherThemeCompat;

    return-void
.end method


# virtual methods
.method public getFolderPreviewHeight()I
    .locals 2

    .line 30
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

    .line 35
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

    .line 25
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

    .line 45
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

    .line 40
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

    .line 16
    iget v0, p0, Lcom/miui/home/launcher/common/ScaleIconSizeProvider;->mScale:F

    return v0
.end method

.method public setScale(F)V
    .locals 0

    .line 20
    iput p1, p0, Lcom/miui/home/launcher/common/ScaleIconSizeProvider;->mScale:F

    return-void
.end method
