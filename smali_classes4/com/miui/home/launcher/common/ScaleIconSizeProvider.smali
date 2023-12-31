.class public Lcom/miui/home/launcher/common/ScaleIconSizeProvider;
.super Ljava/lang/Object;
.source "ScaleIconSizeProvider.java"

# interfaces
.implements Lcom/miui/home/launcher/common/IconSizeProvider;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIconContentRation:F

.field private mScale:F

.field private mThemeCompat:Lcom/miui/home/launcher/compat/LauncherThemeCompat;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/miui/home/launcher/common/ScaleIconSizeProvider;->mContext:Landroid/content/Context;

    .line 17
    invoke-static {p1}, Lcom/miui/home/launcher/compat/LauncherThemeCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/compat/LauncherThemeCompat;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/common/ScaleIconSizeProvider;->mThemeCompat:Lcom/miui/home/launcher/compat/LauncherThemeCompat;

    .line 18
    invoke-direct {p0}, Lcom/miui/home/launcher/common/ScaleIconSizeProvider;->resetContentRation()V

    return-void
.end method

.method private resetContentRation()V
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/miui/home/launcher/common/ScaleIconSizeProvider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->getShortcutIconContentRation(Landroid/content/Context;)F

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/common/ScaleIconSizeProvider;->mIconContentRation:F

    .line 75
    iget v0, p0, Lcom/miui/home/launcher/common/ScaleIconSizeProvider;->mIconContentRation:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 76
    iput v0, p0, Lcom/miui/home/launcher/common/ScaleIconSizeProvider;->mIconContentRation:F

    :cond_0
    return-void
.end method


# virtual methods
.method public enableAndResetCache()V
    .locals 0

    .line 70
    invoke-direct {p0}, Lcom/miui/home/launcher/common/ScaleIconSizeProvider;->resetContentRation()V

    return-void
.end method

.method public getFolderPreviewHeight()I
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/miui/home/launcher/common/ScaleIconSizeProvider;->mThemeCompat:Lcom/miui/home/launcher/compat/LauncherThemeCompat;

    invoke-virtual {v0}, Lcom/miui/home/launcher/compat/LauncherThemeCompat;->getFolderPreviewHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/common/ScaleIconSizeProvider;->getScale()F

    move-result p0

    mul-float/2addr v0, p0

    float-to-int p0, v0

    return p0
.end method

.method public getFolderPreviewItemPadding()I
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/miui/home/launcher/common/ScaleIconSizeProvider;->mThemeCompat:Lcom/miui/home/launcher/compat/LauncherThemeCompat;

    invoke-virtual {v0}, Lcom/miui/home/launcher/compat/LauncherThemeCompat;->getFolderPreviewItemPadding()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/common/ScaleIconSizeProvider;->getScale()F

    move-result p0

    mul-float/2addr v0, p0

    float-to-int p0, v0

    return p0
.end method

.method public getFolderPreviewWidth()I
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/miui/home/launcher/common/ScaleIconSizeProvider;->mThemeCompat:Lcom/miui/home/launcher/compat/LauncherThemeCompat;

    invoke-virtual {v0}, Lcom/miui/home/launcher/compat/LauncherThemeCompat;->getFolderPreviewWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/common/ScaleIconSizeProvider;->getScale()F

    move-result p0

    mul-float/2addr v0, p0

    float-to-int p0, v0

    return p0
.end method

.method public getLauncherIconHeight()I
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/miui/home/launcher/common/ScaleIconSizeProvider;->mThemeCompat:Lcom/miui/home/launcher/compat/LauncherThemeCompat;

    invoke-virtual {v0}, Lcom/miui/home/launcher/compat/LauncherThemeCompat;->getLauncherIconHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/common/ScaleIconSizeProvider;->getScale()F

    move-result p0

    mul-float/2addr v0, p0

    float-to-int p0, v0

    return p0
.end method

.method public getLauncherIconWidth()I
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/miui/home/launcher/common/ScaleIconSizeProvider;->mThemeCompat:Lcom/miui/home/launcher/compat/LauncherThemeCompat;

    invoke-virtual {v0}, Lcom/miui/home/launcher/compat/LauncherThemeCompat;->getLauncherIconWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/common/ScaleIconSizeProvider;->getScale()F

    move-result p0

    mul-float/2addr v0, p0

    float-to-int p0, v0

    return p0
.end method

.method public getLauncherPairIconHeight()I
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/miui/home/launcher/common/ScaleIconSizeProvider;->mThemeCompat:Lcom/miui/home/launcher/compat/LauncherThemeCompat;

    invoke-virtual {v0}, Lcom/miui/home/launcher/compat/LauncherThemeCompat;->getLauncherPairIconHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/common/ScaleIconSizeProvider;->getScale()F

    move-result p0

    mul-float/2addr v0, p0

    float-to-int p0, v0

    return p0
.end method

.method public getLauncherPairIconWidth()I
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/miui/home/launcher/common/ScaleIconSizeProvider;->mThemeCompat:Lcom/miui/home/launcher/compat/LauncherThemeCompat;

    invoke-virtual {v0}, Lcom/miui/home/launcher/compat/LauncherThemeCompat;->getLauncherPairIconWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/common/ScaleIconSizeProvider;->getScale()F

    move-result p0

    mul-float/2addr v0, p0

    float-to-int p0, v0

    return p0
.end method

.method public getScale()F
    .locals 2

    .line 22
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isAccessibilityDisplaySizeLarge()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/LauncherSoscController;->getInstance()Lcom/miui/home/launcher/LauncherSoscController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherSoscController;->getSoscEvent()Lcom/miui/launcher/sosc/module/SoscEvent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/launcher/sosc/module/SoscEvent;->isHalfSoscSplit()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/miui/home/launcher/common/ScaleIconSizeProvider;->mScale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    return v1

    .line 25
    :cond_0
    iget p0, p0, Lcom/miui/home/launcher/common/ScaleIconSizeProvider;->mScale:F

    return p0
.end method

.method public setScale(F)V
    .locals 0

    .line 29
    iput p1, p0, Lcom/miui/home/launcher/common/ScaleIconSizeProvider;->mScale:F

    .line 30
    iget-object p0, p0, Lcom/miui/home/launcher/common/ScaleIconSizeProvider;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->calcIconSize(Landroid/content/res/Resources;)V

    return-void
.end method
