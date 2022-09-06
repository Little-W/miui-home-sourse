.class public final Landroidx/core/view/WindowCompat;
.super Ljava/lang/Object;
.source "WindowCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/WindowCompat$Impl30;,
        Landroidx/core/view/WindowCompat$Impl16;
    }
.end annotation


# direct methods
.method public static getInsetsController(Landroid/view/Window;Landroid/view/View;)Landroidx/core/view/WindowInsetsControllerCompat;
    .locals 2

    .line 135
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 136
    invoke-static {p0}, Landroidx/core/view/WindowCompat$Impl30;->getInsetsController(Landroid/view/Window;)Landroidx/core/view/WindowInsetsControllerCompat;

    move-result-object p0

    return-object p0

    .line 138
    :cond_0
    new-instance v0, Landroidx/core/view/WindowInsetsControllerCompat;

    invoke-direct {v0, p0, p1}, Landroidx/core/view/WindowInsetsControllerCompat;-><init>(Landroid/view/Window;Landroid/view/View;)V

    return-object v0
.end method

.method public static setDecorFitsSystemWindows(Landroid/view/Window;Z)V
    .locals 2

    .line 117
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 118
    invoke-static {p0, p1}, Landroidx/core/view/WindowCompat$Impl30;->setDecorFitsSystemWindows(Landroid/view/Window;Z)V

    goto :goto_0

    .line 119
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 120
    invoke-static {p0, p1}, Landroidx/core/view/WindowCompat$Impl16;->setDecorFitsSystemWindows(Landroid/view/Window;Z)V

    :cond_1
    :goto_0
    return-void
.end method
