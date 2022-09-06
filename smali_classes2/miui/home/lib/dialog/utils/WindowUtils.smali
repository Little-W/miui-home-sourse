.class public Lmiui/home/lib/dialog/utils/WindowUtils;
.super Ljava/lang/Object;
.source "WindowUtils.java"


# direct methods
.method public static getDisplay(Landroid/content/Context;)Landroid/view/Display;
    .locals 2

    .line 36
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 38
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string v0, "WindowUtils"

    const-string v1, "This context is not associated with a display. You should use createDisplayContext() to create a display context to work with windows."

    .line 40
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    :cond_0
    invoke-static {p0}, Lmiui/home/lib/dialog/utils/WindowUtils;->getWindowManager(Landroid/content/Context;)Landroid/view/WindowManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    return-object p0
.end method

.method public static getScreenSize(Landroid/content/Context;Landroid/graphics/Point;)V
    .locals 2

    .line 125
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 126
    invoke-static {p0}, Lmiui/home/lib/dialog/utils/WindowUtils;->getWindowManager(Landroid/content/Context;)Landroid/view/WindowManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/WindowManager;->getMaximumWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    .line 127
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iput v0, p1, Landroid/graphics/Point;->x:I

    .line 128
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    iput p0, p1, Landroid/graphics/Point;->y:I

    goto :goto_0

    .line 130
    :cond_0
    invoke-static {p0}, Lmiui/home/lib/dialog/utils/WindowUtils;->getDisplay(Landroid/content/Context;)Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    :goto_0
    return-void
.end method

.method public static getWindowManager(Landroid/content/Context;)Landroid/view/WindowManager;
    .locals 1

    const-string v0, "window"

    .line 26
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    return-object p0
.end method

.method public static getWindowSize(Landroid/content/Context;)Landroid/graphics/Point;
    .locals 1

    .line 146
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 147
    invoke-static {p0, v0}, Lmiui/home/lib/dialog/utils/WindowUtils;->getWindowSize(Landroid/content/Context;Landroid/graphics/Point;)V

    return-object v0
.end method

.method public static getWindowSize(Landroid/content/Context;Landroid/graphics/Point;)V
    .locals 2

    .line 71
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    .line 73
    invoke-static {p0}, Lmiui/home/lib/dialog/utils/WindowUtils;->getWindowManager(Landroid/content/Context;)Landroid/view/WindowManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    .line 74
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iput v0, p1, Landroid/graphics/Point;->x:I

    .line 75
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    iput p0, p1, Landroid/graphics/Point;->y:I

    goto :goto_3

    .line 76
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-ne v0, v1, :cond_4

    move-object v0, p0

    .line 80
    :goto_0
    instance-of v1, v0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_2

    .line 81
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_1

    goto :goto_1

    .line 84
    :cond_1
    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    .line 87
    :cond_2
    :goto_1
    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_3

    .line 88
    invoke-static {p0}, Lmiui/home/lib/dialog/utils/WindowUtils;->getWindowManager(Landroid/content/Context;)Landroid/view/WindowManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    goto :goto_2

    .line 91
    :cond_3
    invoke-static {p0}, Lmiui/home/lib/dialog/utils/WindowUtils;->getWindowManager(Landroid/content/Context;)Landroid/view/WindowManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/WindowManager;->getMaximumWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    .line 93
    :goto_2
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iput v0, p1, Landroid/graphics/Point;->x:I

    .line 94
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    iput p0, p1, Landroid/graphics/Point;->y:I

    goto :goto_3

    .line 95
    :cond_4
    invoke-static {p0}, Lmiuix/core/util/MiuixUIUtils;->isInMultiWindowMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 96
    invoke-static {p0}, Lmiui/home/lib/dialog/utils/WindowUtils;->getDisplay(Landroid/content/Context;)Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    goto :goto_3

    .line 98
    :cond_5
    invoke-static {p0}, Lmiui/home/lib/dialog/utils/WindowUtils;->getDisplay(Landroid/content/Context;)Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    :goto_3
    return-void
.end method
