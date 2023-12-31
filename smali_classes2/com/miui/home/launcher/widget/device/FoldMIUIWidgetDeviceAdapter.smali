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
.field private mConfiguration:Landroid/content/res/Configuration;

.field private mScreenSize:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method protected enterEditModeIndeed(Landroid/view/View;Landroid/content/Intent;I)V
    .locals 1

    .line 46
    invoke-super {p0, p1, p2, p3}, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->enterEditModeIndeed(Landroid/view/View;Landroid/content/Intent;I)V

    .line 47
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreenMode()Z

    move-result p1

    const-string p3, "isLargeScreenMode"

    if-eqz p1, :cond_0

    const-string p1, "MIUIWidgetDeviceAdapter.FoldMIUIWidgetDeviceAdapter"

    const-string v0, "enterEditModeIndeed isInFoldLargeScreenMode"

    .line 48
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 49
    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 50
    invoke-virtual {p0}, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->attachPreviewLayer()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 52
    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 53
    iget-object p1, p0, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->mTouchedView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :goto_0
    return-void
.end method

.method protected exitEditMode()V
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->mTouchedView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->mTouchedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 111
    :cond_0
    invoke-super {p0}, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->exitEditMode()V

    return-void
.end method

.method protected getOffsetWidgetScreenBound(Landroid/view/View;I)Landroid/graphics/Rect;
    .locals 5

    .line 59
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->getOffsetWidgetScreenBound(Landroid/view/View;I)Landroid/graphics/Rect;

    move-result-object p1

    .line 60
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreenMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    iget-object v1, p0, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->mContext:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v1

    if-nez v1, :cond_0

    return-object p1

    :cond_0
    if-eqz v0, :cond_2

    .line 67
    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->mContext:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p2, :cond_2

    .line 68
    iget-object p0, p0, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->mTouchedView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    .line 69
    iget p2, p1, Landroid/graphics/Rect;->left:I

    if-lt p2, p0, :cond_1

    .line 70
    iget p2, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr p2, p0

    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 71
    iget p2, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr p2, p0

    iput p2, p1, Landroid/graphics/Rect;->right:I

    :cond_1
    return-object p1

    .line 77
    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->mTouchedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0702fc

    invoke-static {v0, v1}, Landroidx/core/content/res/ResourcesCompat;->getFloat(Landroid/content/res/Resources;I)F

    move-result v0

    .line 78
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

    .line 80
    iget-object p1, p0, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->mTouchedView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/home/launcher/common/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result p1

    if-eqz p1, :cond_3

    xor-int/lit8 p2, p2, 0x1

    :cond_3
    const/4 p1, 0x1

    if-ne p2, p1, :cond_4

    .line 82
    iget-object p0, p0, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->mTouchedView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p0, v0

    .line 83
    iget p1, v1, Landroid/graphics/Rect;->left:I

    int-to-float p1, p1

    add-float/2addr p1, p0

    float-to-int p1, p1

    iput p1, v1, Landroid/graphics/Rect;->left:I

    .line 84
    iget p1, v1, Landroid/graphics/Rect;->right:I

    int-to-float p1, p1

    add-float/2addr p1, p0

    float-to-int p0, p1

    iput p0, v1, Landroid/graphics/Rect;->right:I

    .line 86
    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getOffsetWidgetScreenBound "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MIUIWidgetDeviceAdapter.FoldMIUIWidgetDeviceAdapter"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public init(Landroid/app/Activity;Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;)V
    .locals 0

    .line 38
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->init(Landroid/app/Activity;Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;)V

    .line 39
    iget-object p1, p0, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->mContext:Landroid/app/Activity;

    invoke-virtual {p1, p0}, Landroid/app/Activity;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 40
    new-instance p1, Landroid/content/res/Configuration;

    iget-object p2, p0, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->mContext:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object p1, p0, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->mConfiguration:Landroid/content/res/Configuration;

    .line 41
    iget-object p1, p0, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->mConfiguration:Landroid/content/res/Configuration;

    iget p1, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 p1, p1, 0xf

    iput p1, p0, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->mScreenSize:I

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 94
    iget-object p1, p0, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->mConfiguration:Landroid/content/res/Configuration;

    iget p1, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 p1, p1, 0xf

    .line 95
    iget v0, p0, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->mScreenSize:I

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->mTouchedView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 96
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreenMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MIUIWidgetDeviceAdapter.FoldMIUIWidgetDeviceAdapter"

    const-string v1, "onConfigurationChanged isInFoldLargeScreenMode"

    .line 97
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-virtual {p0}, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->attachPreviewLayer()V

    goto :goto_0

    .line 100
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->detachPreviewLayer()V

    .line 103
    :cond_1
    :goto_0
    iput p1, p0, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->mScreenSize:I

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 121
    invoke-super {p0}, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->onDestroy()V

    .line 122
    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->mContext:Landroid/app/Activity;

    invoke-virtual {v0, p0}, Landroid/app/Activity;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    return-void
.end method

.method public onGlobalLayout()V
    .locals 8

    .line 127
    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->mTouchedView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->mPreviewLayer:Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 129
    iget-object v1, p0, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->mTouchedView:Landroid/view/View;

    .line 130
    iget-object v2, p0, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->mTouchedView:Landroid/view/View;

    instance-of v2, v2, Lcom/miui/home/launcher/HostViewContainer;

    if-eqz v2, :cond_0

    .line 131
    iget-object v1, p0, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->mTouchedView:Landroid/view/View;

    check-cast v1, Lcom/miui/home/launcher/HostViewContainer;

    invoke-interface {v1}, Lcom/miui/home/launcher/HostViewContainer;->getHostView()Landroid/view/View;

    move-result-object v1

    .line 133
    :cond_0
    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 135
    iget-object p0, p0, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->mPreviewLayer:Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;

    new-instance v2, Landroid/graphics/Rect;

    const/4 v3, 0x0

    aget v4, v0, v3

    const/4 v5, 0x1

    aget v6, v0, v5

    aget v3, v0, v3

    .line 136
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int/2addr v3, v7

    aget v0, v0, v5

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {v2, v4, v6, v3, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 135
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->updatePreviewPosition(Landroid/graphics/Rect;)V

    :cond_1
    return-void
.end method

.method public onLowMemory()V
    .locals 0

    return-void
.end method

.method protected shouldDisableRecent()Z
    .locals 1

    .line 142
    iget-boolean v0, p0, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->mStopped:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->mTouchedView:Landroid/view/View;

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreenMode()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
