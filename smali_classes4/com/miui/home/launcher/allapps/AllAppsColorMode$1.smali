.class final enum Lcom/miui/home/launcher/allapps/AllAppsColorMode$1;
.super Lcom/miui/home/launcher/allapps/AllAppsColorMode;
.source "AllAppsColorMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/allapps/AllAppsColorMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 16
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;-><init>(Ljava/lang/String;ILcom/miui/home/launcher/allapps/AllAppsColorMode$1;)V

    return-void
.end method


# virtual methods
.method public getPreviewBackground(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 0

    const p0, 0x7f0801ff

    .line 33
    invoke-static {p1, p0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getPreviewDesc(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f110183

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isLightMode(I)Z
    .locals 0

    int-to-float p0, p1

    const/high16 p1, 0x42fd0000    # 126.5f

    cmpl-float p0, p0, p1

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 22
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->hasAppliedLightWallpaper()Z

    move-result p0

    return p0
.end method
