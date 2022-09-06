.class public abstract Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;
.super Ljava/lang/Object;
.source "LargeScreenMIUIWidgetDeviceAdapter.java"

# interfaces
.implements Landroid/content/ComponentCallbacks;
.implements Landroid/view/ViewTreeObserver$OnDrawListener;
.implements Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;
.implements Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;
.implements Lcom/miui/home/launcher/widget/device/MIUIWidgetDeviceAdapter;


# static fields
.field private static final TAG:Ljava/lang/String; = "MIUIWidgetDeviceAdapter.LargeScreenMIUIWidgetDeviceAdapter"


# instance fields
.field protected mConfiguration:Landroid/content/res/Configuration;

.field protected mContext:Landroid/app/Activity;

.field private mLayoutFactory:Lcom/miui/home/launcher/widget/device/LauncherWidgetLayoutFactory;

.field protected mPreviewLayer:Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;

.field protected mStopped:Z

.field protected mTouchedView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private clearTouchView(Landroid/view/View;)V
    .locals 1

    .line 278
    instance-of v0, p1, Lcom/miui/home/launcher/HostViewContainer;

    if-eqz v0, :cond_0

    .line 279
    check-cast p1, Lcom/miui/home/launcher/HostViewContainer;

    invoke-interface {p1}, Lcom/miui/home/launcher/HostViewContainer;->clear()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected attachPreviewLayer()V
    .locals 3

    .line 165
    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->mPreviewLayer:Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;

    if-nez v0, :cond_0

    .line 166
    new-instance v0, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;

    iget-object v1, p0, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->mContext:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->mPreviewLayer:Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;

    .line 169
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->mTouchedView:Landroid/view/View;

    instance-of v0, v0, Lcom/miui/home/launcher/HostViewContainer;

    if-eqz v0, :cond_1

    .line 170
    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->mPreviewLayer:Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;

    iget-object v1, p0, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->mTouchedView:Landroid/view/View;

    check-cast v1, Lcom/miui/home/launcher/HostViewContainer;

    invoke-interface {v1}, Lcom/miui/home/launcher/HostViewContainer;->getCornerRadius()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->setPreviewCorner(F)V

    .line 172
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->mPreviewLayer:Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;

    iget-object v1, p0, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->mTouchedView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->createPreviewBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->drawPreview(Landroid/graphics/Bitmap;)V

    .line 173
    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->mPreviewLayer:Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;

    iget-object v1, p0, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->mTouchedView:Landroid/view/View;

    check-cast v1, Lcom/miui/miuiwidget/LargeScreenTouchTarget;

    invoke-interface {v1}, Lcom/miui/miuiwidget/LargeScreenTouchTarget;->getBoundsOnScreen()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->updatePreviewPosition(Landroid/graphics/Rect;)V

    .line 174
    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->mPreviewLayer:Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_2

    .line 175
    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->mContext:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->mPreviewLayer:Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 177
    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->mPreviewLayer:Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->attach()V

    const/4 v0, 0x1

    .line 178
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->changeMIUIWidgetEditMode(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 180
    invoke-virtual {p0}, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->exitEditMode()V

    const-string v1, "MIUIWidgetDeviceAdapter.LargeScreenMIUIWidgetDeviceAdapter"

    const-string v2, "attachPreviewLayer error"

    .line 181
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method protected createPreviewBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 2

    .line 239
    instance-of v0, p1, Lcom/miui/home/launcher/HostViewContainer;

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    .line 240
    check-cast p1, Lcom/miui/home/launcher/HostViewContainer;

    invoke-interface {p1}, Lcom/miui/home/launcher/HostViewContainer;->getHostView()Landroid/view/View;

    move-result-object p1

    .line 241
    invoke-static {p1, v1}, Lcom/miui/home/launcher/DragController;->createViewBitmap(Landroid/view/View;F)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    .line 243
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->mTouchedView:Landroid/view/View;

    invoke-static {p1, v1}, Lcom/miui/home/launcher/DragController;->createViewBitmap(Landroid/view/View;F)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method protected detachPreviewLayer()V
    .locals 1

    const/4 v0, 0x0

    .line 198
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->changeMIUIWidgetEditMode(Z)V

    .line 199
    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->mPreviewLayer:Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;

    if-nez v0, :cond_0

    return-void

    .line 202
    :cond_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 203
    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->mPreviewLayer:Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->detach()V

    :cond_1
    return-void
.end method

.method protected enterEditMode(Landroid/view/View;Landroid/content/Intent;I)V
    .locals 4

    .line 101
    move-object v0, p1

    check-cast v0, Lcom/miui/miuiwidget/LargeScreenTouchTarget;

    .line 102
    invoke-virtual {p2}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/miui/miuiwidget/LargeScreenTouchTarget;->getTouchViewOptions(Landroid/graphics/Rect;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "MIUIWidgetDeviceAdapter.LargeScreenMIUIWidgetDeviceAdapter"

    .line 103
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "findTouchTarget "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    const-string v1, "miuiWidgetId"

    const/4 v2, -0x1

    .line 104
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_0

    .line 105
    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->enterEditModeIndeed(Landroid/view/View;Landroid/content/Intent;I)V

    goto :goto_0

    .line 107
    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->clearTouchView(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method protected enterEditModeIndeed(Landroid/view/View;Landroid/content/Intent;I)V
    .locals 1

    .line 150
    iput-object p1, p0, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->mTouchedView:Landroid/view/View;

    const-string v0, "miuiWidgetScreenBound"

    .line 152
    invoke-virtual {p0, p1, p3}, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->getOffsetWidgetScreenBound(Landroid/view/View;I)Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "miuiWidgetScreenSide"

    .line 153
    invoke-virtual {p2, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 154
    iget-object p1, p0, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->mTouchedView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    return-void
.end method

.method protected exitEditMode()V
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->mTouchedView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 187
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    .line 188
    invoke-virtual {p0}, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->detachPreviewLayer()V

    .line 189
    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->mTouchedView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->clearTouchView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 190
    iput-object v0, p0, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->mTouchedView:Landroid/view/View;

    :cond_0
    return-void
.end method

.method protected getOffsetWidgetScreenBound(Landroid/view/View;I)Landroid/graphics/Rect;
    .locals 0

    .line 158
    check-cast p1, Lcom/miui/miuiwidget/LargeScreenTouchTarget;

    invoke-interface {p1}, Lcom/miui/miuiwidget/LargeScreenTouchTarget;->getBoundsOnScreen()Landroid/graphics/Rect;

    move-result-object p1

    return-object p1
.end method

.method public getSystemService(Ljava/lang/Object;)V
    .locals 1

    .line 57
    instance-of v0, p1, Landroid/view/LayoutInflater;

    if-eqz v0, :cond_2

    .line 58
    check-cast p1, Landroid/view/LayoutInflater;

    .line 59
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getFactory2()Landroid/view/LayoutInflater$Factory2;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->mLayoutFactory:Lcom/miui/home/launcher/widget/device/LauncherWidgetLayoutFactory;

    if-nez v0, :cond_1

    .line 63
    new-instance v0, Lcom/miui/home/launcher/widget/device/LauncherWidgetLayoutFactory;

    invoke-direct {v0}, Lcom/miui/home/launcher/widget/device/LauncherWidgetLayoutFactory;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->mLayoutFactory:Lcom/miui/home/launcher/widget/device/LauncherWidgetLayoutFactory;

    .line 65
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->mLayoutFactory:Lcom/miui/home/launcher/widget/device/LauncherWidgetLayoutFactory;

    invoke-virtual {p1, v0}, Landroid/view/LayoutInflater;->setFactory2(Landroid/view/LayoutInflater$Factory2;)V

    :cond_2
    return-void
.end method

.method public init(Landroid/app/Activity;Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->mContext:Landroid/app/Activity;

    .line 49
    iget-object p1, p0, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->mContext:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnWindowFocusChangeListener(Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;)V

    .line 50
    invoke-virtual {p2, p0}, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->addOnWallpaperColorChangedListener(Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;)V

    .line 51
    iget-object p1, p0, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->mContext:Landroid/app/Activity;

    invoke-virtual {p1, p0}, Landroid/app/Activity;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 52
    new-instance p1, Landroid/content/res/Configuration;

    iget-object p2, p0, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->mContext:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object p1, p0, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->mConfiguration:Landroid/content/res/Configuration;

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result p1

    .line 267
    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->mLayoutFactory:Lcom/miui/home/launcher/widget/device/LauncherWidgetLayoutFactory;

    if-eqz v0, :cond_0

    and-int/lit16 p1, p1, 0x1000

    if-eqz p1, :cond_0

    .line 268
    iget-object p1, p0, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->mContext:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/widget/device/LauncherWidgetLayoutFactory;->onDensityChanged(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 234
    invoke-virtual {p0}, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->exitEditMode()V

    .line 235
    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->mContext:Landroid/app/Activity;

    invoke-virtual {v0, p0}, Landroid/app/Activity;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    return-void
.end method

.method public onDraw()V
    .locals 2

    .line 248
    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->mTouchedView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->mPreviewLayer:Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;

    if-eqz v1, :cond_0

    .line 249
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->createPreviewBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->drawPreview(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public onLowMemory()V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 2

    const-string v0, "MIUIWidgetDeviceAdapter.LargeScreenMIUIWidgetDeviceAdapter"

    const-string v1, "onStart"

    .line 217
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 218
    iput-boolean v0, p0, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->mStopped:Z

    .line 219
    invoke-virtual {p0}, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->shouldDisableRecent()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MIUIWidgetDeviceAdapter.LargeScreenMIUIWidgetDeviceAdapter"

    const-string v1, "onStart disableRecent"

    .line 220
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 221
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->changeMIUIWidgetEditMode(Z)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    const-string v0, "MIUIWidgetDeviceAdapter.LargeScreenMIUIWidgetDeviceAdapter"

    const-string v1, "onStop reset"

    .line 227
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 228
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->changeMIUIWidgetEditMode(Z)V

    const/4 v0, 0x1

    .line 229
    iput-boolean v0, p0, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->mStopped:Z

    return-void
.end method

.method public onWallpaperColorChanged()V
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->mPreviewLayer:Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;

    if-eqz v0, :cond_0

    .line 260
    invoke-virtual {v0}, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->onWallpaperColorChanged()V

    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3

    const-string v0, "MIUIWidgetDeviceAdapter.LargeScreenMIUIWidgetDeviceAdapter"

    .line 209
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowFocusChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 211
    invoke-virtual {p0}, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->exitEditMode()V

    :cond_0
    return-void
.end method

.method protected shouldDisableRecent()Z
    .locals 1

    .line 254
    iget-boolean v0, p0, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->mStopped:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->mTouchedView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public startActivity(Landroid/view/View;Landroid/content/Intent;I)V
    .locals 2

    .line 118
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_6

    if-nez p1, :cond_0

    goto :goto_1

    .line 123
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    const-string v1, "miuiWidgetId"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 124
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "[1-9][0-9]*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 132
    :cond_1
    instance-of v1, p1, Lcom/miui/home/launcher/HostViewContainer;

    if-nez v1, :cond_2

    .line 133
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->clearTouchView(Landroid/view/View;)V

    return-void

    .line 137
    :cond_2
    move-object v1, p1

    check-cast v1, Lcom/miui/home/launcher/HostViewContainer;

    invoke-interface {v1}, Lcom/miui/home/launcher/HostViewContainer;->getWidgetId()I

    move-result v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-eq v1, v0, :cond_3

    .line 138
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->clearTouchView(Landroid/view/View;)V

    return-void

    .line 142
    :cond_3
    instance-of v0, p1, Lcom/miui/miuiwidget/LargeScreenTouchTarget;

    if-nez v0, :cond_4

    .line 143
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->clearTouchView(Landroid/view/View;)V

    return-void

    .line 146
    :cond_4
    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->enterEditModeIndeed(Landroid/view/View;Landroid/content/Intent;I)V

    return-void

    .line 125
    :cond_5
    :goto_0
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->clearTouchView(Landroid/view/View;)V

    return-void

    .line 119
    :cond_6
    :goto_1
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->clearTouchView(Landroid/view/View;)V

    return-void
.end method

.method public startIntentSender(Landroid/view/View;Landroid/content/IntentSender;Landroid/content/Intent;I)V
    .locals 1

    if-eqz p3, :cond_3

    if-eqz p1, :cond_3

    .line 74
    iget-object p2, p0, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->mTouchedView:Landroid/view/View;

    if-eqz p2, :cond_0

    goto :goto_0

    .line 80
    :cond_0
    instance-of p2, p1, Lcom/miui/miuiwidget/LargeScreenTouchTarget;

    if-nez p2, :cond_1

    const-string p2, "MIUIWidgetDeviceAdapter.LargeScreenMIUIWidgetDeviceAdapter"

    const-string p3, "widgetView is not a instanceof LargeScreenTouchTarget"

    .line 81
    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->clearTouchView(Landroid/view/View;)V

    return-void

    .line 89
    :cond_1
    move-object p2, p1

    check-cast p2, Lcom/miui/miuiwidget/LargeScreenTouchTarget;

    invoke-virtual {p3}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/miui/miuiwidget/LargeScreenTouchTarget;->touchIn(Landroid/graphics/Rect;)Z

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "MIUIWidgetDeviceAdapter.LargeScreenMIUIWidgetDeviceAdapter"

    const-string p3, "touch target mismatch"

    .line 90
    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->clearTouchView(Landroid/view/View;)V

    return-void

    .line 94
    :cond_2
    invoke-virtual {p0, p1, p3, p4}, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->enterEditMode(Landroid/view/View;Landroid/content/Intent;I)V

    return-void

    :cond_3
    :goto_0
    const-string p2, "MIUIWidgetDeviceAdapter.LargeScreenMIUIWidgetDeviceAdapter"

    .line 75
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "startIntentSender return : "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, " , "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->mTouchedView:Landroid/view/View;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->clearTouchView(Landroid/view/View;)V

    return-void
.end method
