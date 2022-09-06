.class Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;
.super Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;
.source "FoldMIUIWidgetDeviceAdapter.java"

# interfaces
.implements Landroid/content/ComponentCallbacks;
.implements Landroid/view/ViewTreeObserver$OnDrawListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "MIUIWidgetDeviceAdapter.FoldMIUIWidgetDeviceAdapter"


# instance fields
.field private mScreenSize:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method protected enterEditModeIndeed(Landroid/view/View;Landroid/content/Intent;I)V
    .locals 0

    .line 41
    invoke-super {p0, p1, p2, p3}, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->enterEditModeIndeed(Landroid/view/View;Landroid/content/Intent;I)V

    .line 42
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreenMode()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "MIUIWidgetDeviceAdapter.FoldMIUIWidgetDeviceAdapter"

    const-string p3, "enterEditModeIndeed isInFoldLargeScreenMode"

    .line 43
    invoke-static {p1, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "isLargeScreenMode"

    const/4 p3, 0x1

    .line 44
    invoke-virtual {p2, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 45
    invoke-virtual {p0}, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->attachPreviewLayer()V

    goto :goto_0

    :cond_0
    const-string p1, "isLargeScreenMode"

    const/4 p3, 0x0

    .line 47
    invoke-virtual {p2, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 48
    iget-object p1, p0, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->mTouchedView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :goto_0
    return-void
.end method

.method protected exitEditMode()V
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->mTouchedView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->mTouchedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 104
    :cond_0
    invoke-super {p0}, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->exitEditMode()V

    return-void
.end method

.method protected getOffsetWidgetScreenBound(Landroid/view/View;I)Landroid/graphics/Rect;
    .locals 5

    .line 54
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->getOffsetWidgetScreenBound(Landroid/view/View;I)Landroid/graphics/Rect;

    move-result-object p1

    .line 55
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreenMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    iget-object v1, p0, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->mContext:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v1

    if-nez v1, :cond_0

    return-object p1

    :cond_0
    if-eqz v0, :cond_2

    .line 62
    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->mContext:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p2, :cond_2

    .line 63
    iget-object p2, p0, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->mTouchedView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p2

    .line 64
    iget v0, p1, Landroid/graphics/Rect;->left:I

    if-lt v0, p2, :cond_1

    .line 65
    iget v0, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, p2

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 66
    iget v0, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, p2

    iput v0, p1, Landroid/graphics/Rect;->right:I

    :cond_1
    return-object p1

    .line 72
    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->mTouchedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0702a4

    invoke-static {v0, v1}, Landroidx/core/content/res/ResourcesCompat;->getFloat(Landroid/content/res/Resources;I)F

    move-result v0

    .line 73
    new-instance v1, Landroid/graphics/Rect;

    iget v2, p1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget v4, p1, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    mul-float/2addr v4, v0

    float-to-int v4, v4

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v1, v2, v3, v4, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 p1, 0x1

    if-ne p2, p1, :cond_3

    .line 75
    iget-object p1, p0, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->mTouchedView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, v0

    .line 76
    iget p2, v1, Landroid/graphics/Rect;->left:I

    int-to-float p2, p2

    add-float/2addr p2, p1

    float-to-int p2, p2

    iput p2, v1, Landroid/graphics/Rect;->left:I

    .line 77
    iget p2, v1, Landroid/graphics/Rect;->right:I

    int-to-float p2, p2

    add-float/2addr p2, p1

    float-to-int p1, p2

    iput p1, v1, Landroid/graphics/Rect;->right:I

    :cond_3
    const-string p1, "MIUIWidgetDeviceAdapter.FoldMIUIWidgetDeviceAdapter"

    .line 79
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getOffsetWidgetScreenBound "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public init(Landroid/app/Activity;Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;)V
    .locals 0

    .line 35
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->init(Landroid/app/Activity;Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;)V

    .line 36
    iget-object p1, p0, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->mConfiguration:Landroid/content/res/Configuration;

    iget p1, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 p1, p1, 0xf

    iput p1, p0, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->mScreenSize:I

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 86
    invoke-super {p0, p1}, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 87
    iget-object p1, p0, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->mConfiguration:Landroid/content/res/Configuration;

    iget p1, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 p1, p1, 0xf

    .line 88
    iget v0, p0, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->mScreenSize:I

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->mTouchedView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 89
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreenMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MIUIWidgetDeviceAdapter.FoldMIUIWidgetDeviceAdapter"

    const-string v1, "onConfigurationChanged isInFoldLargeScreenMode"

    .line 90
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-virtual {p0}, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->attachPreviewLayer()V

    goto :goto_0

    .line 93
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->detachPreviewLayer()V

    .line 96
    :cond_1
    :goto_0
    iput p1, p0, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->mScreenSize:I

    return-void
.end method

.method public onGlobalLayout()V
    .locals 9

    .line 109
    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->mTouchedView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->mPreviewLayer:Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    .line 110
    new-array v0, v0, [I

    .line 111
    iget-object v1, p0, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->mTouchedView:Landroid/view/View;

    .line 112
    iget-object v2, p0, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->mTouchedView:Landroid/view/View;

    instance-of v2, v2, Lcom/miui/home/launcher/HostViewContainer;

    if-eqz v2, :cond_0

    .line 113
    iget-object v1, p0, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->mTouchedView:Landroid/view/View;

    check-cast v1, Lcom/miui/home/launcher/HostViewContainer;

    invoke-interface {v1}, Lcom/miui/home/launcher/HostViewContainer;->getHostView()Landroid/view/View;

    move-result-object v1

    .line 115
    :cond_0
    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 117
    iget-object v2, p0, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->mPreviewLayer:Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;

    new-instance v3, Landroid/graphics/Rect;

    const/4 v4, 0x0

    aget v5, v0, v4

    const/4 v6, 0x1

    aget v7, v0, v6

    aget v4, v0, v4

    .line 118
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v8

    add-int/2addr v4, v8

    aget v0, v0, v6

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {v3, v5, v7, v4, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 117
    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->updatePreviewPosition(Landroid/graphics/Rect;)V

    :cond_1
    return-void
.end method

.method protected shouldDisableRecent()Z
    .locals 1

    .line 124
    iget-boolean v0, p0, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->mStopped:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->mTouchedView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreenMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
