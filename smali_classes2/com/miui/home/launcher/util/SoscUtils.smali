.class public Lcom/miui/home/launcher/util/SoscUtils;
.super Ljava/lang/Object;
.source "SoscUtils.java"


# static fields
.field private static TAG:Ljava/lang/String; = "Launcher.SoscUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static getInsetsBottom(Landroid/view/WindowInsets;)I
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 22
    sget-object p0, Lcom/miui/home/launcher/util/SoscUtils;->TAG:Ljava/lang/String;

    const-string v1, "insets is null"

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 25
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/LauncherSoscController;->getInstance()Lcom/miui/home/launcher/LauncherSoscController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/LauncherSoscController;->getSoscEvent()Lcom/miui/launcher/sosc/module/SoscEvent;

    move-result-object v1

    .line 26
    invoke-virtual {p0}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result p0

    .line 27
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/home/launcher/util/SoscUtils;->isTopLayout(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 28
    iget v2, v1, Lcom/miui/launcher/sosc/module/SoscEvent;->minimizedSize:I

    if-ge p0, v2, :cond_1

    goto :goto_0

    .line 31
    :cond_1
    iget v0, v1, Lcom/miui/launcher/sosc/module/SoscEvent;->minimizedSize:I

    sub-int v0, p0, v0

    goto :goto_0

    :cond_2
    move v0, p0

    :goto_0
    return v0
.end method

.method private static getRootBounds(Landroid/content/Context;)Landroid/graphics/Rect;
    .locals 3

    .line 50
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v1, "window"

    .line 51
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 52
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    .line 53
    invoke-virtual {p0, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 54
    new-instance p0, Landroid/graphics/Rect;

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    const/4 v2, 0x0

    invoke-direct {p0, v2, v2, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0
.end method

.method public static isBottomLayout()Z
    .locals 2

    .line 46
    invoke-static {}, Lcom/miui/home/launcher/LauncherSoscController;->getInstance()Lcom/miui/home/launcher/LauncherSoscController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherSoscController;->getSoscEvent()Lcom/miui/launcher/sosc/module/SoscEvent;

    move-result-object v0

    invoke-static {}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->getInstance()Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->getPreloadMinimizedSize()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/launcher/sosc/module/SoscEvent;->isBottomLayout(I)Z

    move-result v0

    return v0
.end method

.method public static isTopLayout(Landroid/content/Context;)Z
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 41
    :cond_0
    invoke-static {p0}, Lcom/miui/home/launcher/util/SoscUtils;->getRootBounds(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object p0

    .line 42
    invoke-static {}, Lcom/miui/home/launcher/LauncherSoscController;->getInstance()Lcom/miui/home/launcher/LauncherSoscController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherSoscController;->getSoscEvent()Lcom/miui/launcher/sosc/module/SoscEvent;

    move-result-object v0

    invoke-static {}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->getInstance()Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->getPreloadMinimizedSize()I

    move-result v1

    invoke-virtual {v0, p0, v1}, Lcom/miui/launcher/sosc/module/SoscEvent;->isTopLayout(Landroid/graphics/Rect;I)Z

    move-result p0

    return p0
.end method
