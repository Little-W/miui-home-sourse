.class public Lcom/miui/home/launcher/FitSystemWindowView;
.super Lcom/miui/launcher/views/LauncherFrameLayout;
.source "FitSystemWindowView.java"

# interfaces
.implements Lcom/miui/launcher/sosc/interfaces/SoscingView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2}, Lcom/miui/launcher/views/LauncherFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 2

    .line 20
    invoke-static {p1}, Lcom/miui/home/launcher/util/SoscUtils;->getInsetsBottom(Landroid/view/WindowInsets;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1, v1, v0}, Lcom/miui/home/launcher/FitSystemWindowView;->setPadding(IIII)V

    .line 21
    invoke-super {p0, p1}, Lcom/miui/launcher/views/LauncherFrameLayout;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method public onInterceptSoscEvent(Lcom/miui/launcher/sosc/module/SoscEvent;Lcom/miui/launcher/sosc/module/SoscEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onSoscEvent(Lcom/miui/launcher/sosc/module/SoscEvent;Lcom/miui/launcher/sosc/module/SoscEvent;)V
    .locals 0

    .line 26
    invoke-virtual {p0}, Lcom/miui/home/launcher/FitSystemWindowView;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/home/launcher/util/SoscUtils;->getInsetsBottom(Landroid/view/WindowInsets;)I

    move-result p1

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p2, p2, p1}, Lcom/miui/home/launcher/FitSystemWindowView;->setPadding(IIII)V

    return-void
.end method
