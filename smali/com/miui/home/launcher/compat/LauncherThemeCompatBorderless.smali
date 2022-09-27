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

.field private mResource:Landroid/content/res/Resources;

.field private mTitleTop:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/miui/home/launcher/compat/LauncherThemeCompat;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/miui/home/launcher/compat/LauncherThemeCompatBorderless;->mContext:Landroid/content/Context;

    .line 21
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/compat/LauncherThemeCompatBorderless;->mResource:Landroid/content/res/Resources;

    return-void
.end method


# virtual methods
.method public enableAndResetCache()V
    .locals 3

    .line 26
    iget-object v0, p0, Lcom/miui/home/launcher/compat/LauncherThemeCompatBorderless;->mResource:Landroid/content/res/Resources;

    const v1, 0x7f070112

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/compat/LauncherThemeCompatBorderless;->mTitleTop:I

    .line 27
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->isElderlyManMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    iget v0, p0, Lcom/miui/home/launcher/compat/LauncherThemeCompatBorderless;->mTitleTop:I

    iget-object v1, p0, Lcom/miui/home/launcher/compat/LauncherThemeCompatBorderless;->mResource:Landroid/content/res/Resources;

    const v2, 0x7f0700be

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/miui/home/launcher/compat/LauncherThemeCompatBorderless;->mTitleTop:I

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/compat/LauncherThemeCompatBorderless;->mResource:Landroid/content/res/Resources;

    const v1, 0x7f0700e6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/compat/LauncherThemeCompatBorderless;->mFolderPreviewWidth:I

    .line 31
    iget-object v0, p0, Lcom/miui/home/launcher/compat/LauncherThemeCompatBorderless;->mResource:Landroid/content/res/Resources;

    const v1, 0x7f0700e4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/compat/LauncherThemeCompatBorderless;->mFolderPreviewHeight:I

    .line 32
    iget-object v0, p0, Lcom/miui/home/launcher/compat/LauncherThemeCompatBorderless;->mResource:Landroid/content/res/Resources;

    const v1, 0x7f0700e5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/compat/LauncherThemeCompatBorderless;->mFolderPreviewItemPadding:I

    .line 33
    iget-object v0, p0, Lcom/miui/home/launcher/compat/LauncherThemeCompatBorderless;->mResource:Landroid/content/res/Resources;

    const v1, 0x7f070085

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/compat/LauncherThemeCompatBorderless;->mLauncherIconWidth:I

    .line 34
    iget-object v0, p0, Lcom/miui/home/launcher/compat/LauncherThemeCompatBorderless;->mResource:Landroid/content/res/Resources;

    const v1, 0x7f070082

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/compat/LauncherThemeCompatBorderless;->mLauncherIconHeight:I

    return-void
.end method

.method public getFolderPreviewHeight()I
    .locals 1

    .line 49
    iget v0, p0, Lcom/miui/home/launcher/compat/LauncherThemeCompatBorderless;->mFolderPreviewHeight:I

    return v0
.end method

.method public getFolderPreviewItemPadding()I
    .locals 1

    .line 54
    iget v0, p0, Lcom/miui/home/launcher/compat/LauncherThemeCompatBorderless;->mFolderPreviewItemPadding:I

    return v0
.end method

.method public getFolderPreviewWidth()I
    .locals 1

    .line 44
    iget v0, p0, Lcom/miui/home/launcher/compat/LauncherThemeCompatBorderless;->mFolderPreviewWidth:I

    return v0
.end method

.method public getLauncherIconHeight()I
    .locals 1

    .line 64
    iget v0, p0, Lcom/miui/home/launcher/compat/LauncherThemeCompatBorderless;->mLauncherIconHeight:I

    return v0
.end method

.method public getLauncherIconWidth()I
    .locals 1

    .line 59
    iget v0, p0, Lcom/miui/home/launcher/compat/LauncherThemeCompatBorderless;->mLauncherIconWidth:I

    return v0
.end method

.method public getTitleMarginTop()I
    .locals 1

    .line 39
    iget v0, p0, Lcom/miui/home/launcher/compat/LauncherThemeCompatBorderless;->mTitleTop:I

    return v0
.end method
