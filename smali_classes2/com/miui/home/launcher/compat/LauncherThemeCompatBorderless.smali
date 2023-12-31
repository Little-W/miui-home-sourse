.class public Lcom/miui/home/launcher/compat/LauncherThemeCompatBorderless;
.super Lcom/miui/home/launcher/compat/LauncherThemeCompat;
.source "LauncherThemeCompatBorderless.java"


# instance fields
.field protected mContext:Landroid/content/Context;

.field private mFolderPreviewHeight:I

.field private mFolderPreviewItemPadding:I

.field private mFolderPreviewWidth:I

.field private mLauncherIconHeight:I

.field private mLauncherIconWidth:I

.field private mLauncherPairIconHeight:I

.field private mLauncherPairIconWidth:I

.field private mResource:Landroid/content/res/Resources;

.field private mTitleTop:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/miui/home/launcher/compat/LauncherThemeCompat;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/miui/home/launcher/compat/LauncherThemeCompatBorderless;->mContext:Landroid/content/Context;

    .line 23
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/compat/LauncherThemeCompatBorderless;->mResource:Landroid/content/res/Resources;

    return-void
.end method


# virtual methods
.method public enableAndResetCache()V
    .locals 3

    .line 28
    iget-object v0, p0, Lcom/miui/home/launcher/compat/LauncherThemeCompatBorderless;->mResource:Landroid/content/res/Resources;

    const v1, 0x7f070206

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/compat/LauncherThemeCompatBorderless;->mTitleTop:I

    .line 29
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->isElderlyManMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    iget v0, p0, Lcom/miui/home/launcher/compat/LauncherThemeCompatBorderless;->mTitleTop:I

    iget-object v1, p0, Lcom/miui/home/launcher/compat/LauncherThemeCompatBorderless;->mResource:Landroid/content/res/Resources;

    const v2, 0x7f07015c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/miui/home/launcher/compat/LauncherThemeCompatBorderless;->mTitleTop:I

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/compat/LauncherThemeCompatBorderless;->mResource:Landroid/content/res/Resources;

    const v1, 0x7f0701b9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/compat/LauncherThemeCompatBorderless;->mFolderPreviewWidth:I

    .line 33
    iget-object v0, p0, Lcom/miui/home/launcher/compat/LauncherThemeCompatBorderless;->mResource:Landroid/content/res/Resources;

    const v1, 0x7f0701b7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/compat/LauncherThemeCompatBorderless;->mFolderPreviewHeight:I

    .line 34
    iget-object v0, p0, Lcom/miui/home/launcher/compat/LauncherThemeCompatBorderless;->mResource:Landroid/content/res/Resources;

    const v1, 0x7f0701b8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/compat/LauncherThemeCompatBorderless;->mFolderPreviewItemPadding:I

    .line 35
    iget-object v0, p0, Lcom/miui/home/launcher/compat/LauncherThemeCompatBorderless;->mResource:Landroid/content/res/Resources;

    const v1, 0x7f0700b0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/compat/LauncherThemeCompatBorderless;->mLauncherIconWidth:I

    .line 36
    iget-object v0, p0, Lcom/miui/home/launcher/compat/LauncherThemeCompatBorderless;->mResource:Landroid/content/res/Resources;

    const v1, 0x7f0700ad

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/compat/LauncherThemeCompatBorderless;->mLauncherIconHeight:I

    .line 37
    iget-object v0, p0, Lcom/miui/home/launcher/compat/LauncherThemeCompatBorderless;->mResource:Landroid/content/res/Resources;

    const v1, 0x7f0700b4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/compat/LauncherThemeCompatBorderless;->mLauncherPairIconWidth:I

    .line 38
    iget-object v0, p0, Lcom/miui/home/launcher/compat/LauncherThemeCompatBorderless;->mResource:Landroid/content/res/Resources;

    const v1, 0x7f0700b3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/compat/LauncherThemeCompatBorderless;->mLauncherPairIconHeight:I

    return-void
.end method

.method public getFolderPreviewHeight()I
    .locals 0

    .line 53
    iget p0, p0, Lcom/miui/home/launcher/compat/LauncherThemeCompatBorderless;->mFolderPreviewHeight:I

    return p0
.end method

.method public getFolderPreviewItemPadding()I
    .locals 0

    .line 58
    iget p0, p0, Lcom/miui/home/launcher/compat/LauncherThemeCompatBorderless;->mFolderPreviewItemPadding:I

    return p0
.end method

.method public getFolderPreviewWidth()I
    .locals 0

    .line 48
    iget p0, p0, Lcom/miui/home/launcher/compat/LauncherThemeCompatBorderless;->mFolderPreviewWidth:I

    return p0
.end method

.method public getLauncherIconHeight()I
    .locals 0

    .line 68
    iget p0, p0, Lcom/miui/home/launcher/compat/LauncherThemeCompatBorderless;->mLauncherIconHeight:I

    return p0
.end method

.method public getLauncherIconWidth()I
    .locals 0

    .line 63
    iget p0, p0, Lcom/miui/home/launcher/compat/LauncherThemeCompatBorderless;->mLauncherIconWidth:I

    return p0
.end method

.method public getLauncherPairIconHeight()I
    .locals 0

    .line 78
    iget p0, p0, Lcom/miui/home/launcher/compat/LauncherThemeCompatBorderless;->mLauncherPairIconHeight:I

    return p0
.end method

.method public getLauncherPairIconWidth()I
    .locals 0

    .line 73
    iget p0, p0, Lcom/miui/home/launcher/compat/LauncherThemeCompatBorderless;->mLauncherPairIconWidth:I

    return p0
.end method

.method public getTitleMarginTop()I
    .locals 0

    .line 43
    iget p0, p0, Lcom/miui/home/launcher/compat/LauncherThemeCompatBorderless;->mTitleTop:I

    return p0
.end method
