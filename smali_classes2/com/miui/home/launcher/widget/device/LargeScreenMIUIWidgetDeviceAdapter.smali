.class public abstract Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;
.super Ljava/lang/Object;
.source "LargeScreenMIUIWidgetDeviceAdapter.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnDrawListener;
.implements Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;
.implements Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;
.implements Lcom/miui/home/launcher/widget/device/MIUIWidgetDeviceAdapter;


# static fields
.field private static final TAG:Ljava/lang/String; = "MIUIWidgetDeviceAdapter.LargeScreenMIUIWidgetDeviceAdapter"


# instance fields
.field protected mContext:Landroid/app/Activity;

.field protected mPreviewLayer:Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;

.field protected mStopped:Z

.field protected mTouchedView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected attachPreviewLayer()V
    .locals 3

    .line 141
    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->mPreviewLayer:Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;

    if-nez v0, :cond_0

    .line 142
    new-instance v0, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;

    iget-object v1, p0, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->mContext:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->mPreviewLayer:Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;

    .line 145
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->mTouchedView:Landroid/view/View;

    instance-of v0, v0, Lcom/miui/home/launcher/HostViewContainer;

    if-eqz v0, :cond_1

    .line 146
    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->mPreviewLayer:Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;

    iget-object v1, p0, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->mTouchedView:Landroid/view/View;

    check-cast v1, Lcom/miui/home/launcher/HostViewContainer;

    invoke-interface {v1}, Lcom/miui/home/launcher/HostViewContainer;->getCornerRadius()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->setPreviewCorner(F)V

    .line 148
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->mPreviewLayer:Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;

    iget-object v1, p0, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->mTouchedView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->createPreviewBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->drawPreview(Landroid/graphics/Bitmap;)V

    .line 149
    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->mPreviewLayer:Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;

    iget-object v1, p0, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->mTouchedView:Landroid/view/View;

    check-cast v1, Lcom/miui/miuiwidget/LargeScreenTouchTarget;

    invoke-interface {v1}, Lcom/miui/miuiwidget/LargeScreenTouchTarget;->getBoundsOnScreen()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->updatePreviewPosition(Landroid/graphics/Rect;)V

    .line 150
    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->mPreviewLayer:Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_2

    .line 151
    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->mContext:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->mPreviewLayer:Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 153
    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->mPreviewLayer:Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->attach()V

    const/4 v0, 0x1

    .line 154
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->changeMIUIWidgetEditMode(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 156
    invoke-virtual {p0}, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->exitEditMode()V

    const-string v1, "MIUIWidgetDeviceAdapter.LargeScreenMIUIWidgetDeviceAdapter"

    const-string v2, "attachPreviewLayer error"

    .line 157
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method protected createPreviewBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 2

    .line 213
    instance-of v0, p1, Lcom/miui/home/launcher/HostViewContainer;

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    .line 214
    check-cast p1, Lcom/miui/home/launcher/HostViewContainer;

    invoke-interface {p1}, Lcom/miui/home/launcher/HostViewContainer;->getHostView()Landroid/view/View;

    move-result-object p1

    .line 215
    invoke-static {p1, v1}, Lcom/miui/home/launcher/DragController;->createViewBitmap(Landroid/view/View;F)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    .line 217
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->mTouchedView:Landroid/view/View;

    invoke-static {p1, v1}, Lcom/miui/home/launcher/DragController;->createViewBitmap(Landroid/view/View;F)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method protected detachPreviewLayer()V
    .locals 1

    const/4 v0, 0x0

    .line 173
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->changeMIUIWidgetEditMode(Z)V

    .line 174
    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->mPreviewLayer:Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;

    if-nez v0, :cond_0

    return-void

    .line 177
    :cond_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 178
    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->mPreviewLayer:Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->detach()V

    :cond_1
    return-void
.end method

.method protected enterEditMode(Landroid/view/View;Landroid/content/Intent;I)V
    .locals 4

    .line 84
    move-object v0, p1

    check-cast v0, Lcom/miui/miuiwidget/LargeScreenTouchTarget;

    .line 85
    invoke-virtual {p2}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/miui/miuiwidget/LargeScreenTouchTarget;->getTouchViewOptions(Landroid/graphics/Rect;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "MIUIWidgetDeviceAdapter.LargeScreenMIUIWidgetDeviceAdapter"

    .line 86
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

    .line 87
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_0

    .line 88
    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->enterEditModeIndeed(Landroid/view/View;Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method

.method protected enterEditModeIndeed(Landroid/view/View;Landroid/content/Intent;I)V
    .locals 1

    .line 126
    iput-object p1, p0, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->mTouchedView:Landroid/view/View;

    const-string v0, "miuiWidgetScreenBound"

    .line 128
    invoke-virtual {p0, p1, p3}, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->getOffsetWidgetScreenBound(Landroid/view/View;I)Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "miuiWidgetScreenSide"

    .line 129
    invoke-virtual {p2, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 130
    iget-object p1, p0, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->mTouchedView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    return-void
.end method

.method protected exitEditMode()V
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->mTouchedView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    .line 164
    invoke-virtual {p0}, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->detachPreviewLayer()V

    const/4 v0, 0x0

    .line 165
    iput-object v0, p0, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->mTouchedView:Landroid/view/View;

    :cond_0
    return-void
.end method

.method protected getOffsetWidgetScreenBound(Landroid/view/View;I)Landroid/graphics/Rect;
    .locals 0

    .line 134
    check-cast p1, Lcom/miui/miuiwidget/LargeScreenTouchTarget;

    invoke-interface {p1}, Lcom/miui/miuiwidget/LargeScreenTouchTarget;->getBoundsOnScreen()Landroid/graphics/Rect;

    move-result-object p1

    return-object p1
.end method

.method public getSystemService(Ljava/lang/Object;)V
    .locals 1

    .line 47
    instance-of v0, p1, Landroid/view/LayoutInflater;

    if-eqz v0, :cond_0

    .line 48
    check-cast p1, Landroid/view/LayoutInflater;

    .line 49
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getFactory2()Landroid/view/LayoutInflater$Factory2;

    move-result-object v0

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lcom/miui/home/launcher/widget/device/LauncherWidgetLayoutFactory;

    invoke-direct {v0}, Lcom/miui/home/launcher/widget/device/LauncherWidgetLayoutFactory;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/LayoutInflater;->setFactory2(Landroid/view/LayoutInflater$Factory2;)V

    :cond_0
    return-void
.end method

.method public init(Landroid/app/Activity;Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->mContext:Landroid/app/Activity;

    .line 41
    iget-object p1, p0, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->mContext:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnWindowFocusChangeListener(Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;)V

    .line 42
    invoke-virtual {p2, p0}, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->addOnWallpaperColorChangedListener(Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;)V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 209
    invoke-virtual {p0}, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->exitEditMode()V

    return-void
.end method

.method public onDraw()V
    .locals 2

    .line 222
    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->mTouchedView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->mPreviewLayer:Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;

    if-eqz v1, :cond_0

    .line 223
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->createPreviewBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->drawPreview(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    const-string v0, "MIUIWidgetDeviceAdapter.LargeScreenMIUIWidgetDeviceAdapter"

    const-string v1, "onStart"

    .line 192
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 193
    iput-boolean v0, p0, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->mStopped:Z

    .line 194
    invoke-virtual {p0}, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->shouldDisableRecent()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MIUIWidgetDeviceAdapter.LargeScreenMIUIWidgetDeviceAdapter"

    const-string v1, "onStart disableRecent"

    .line 195
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 196
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->changeMIUIWidgetEditMode(Z)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    const-string v0, "MIUIWidgetDeviceAdapter.LargeScreenMIUIWidgetDeviceAdapter"

    const-string v1, "onStop reset"

    .line 202
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 203
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->changeMIUIWidgetEditMode(Z)V

    const/4 v0, 0x1

    .line 204
    iput-boolean v0, p0, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->mStopped:Z

    return-void
.end method

.method public onWallpaperColorChanged()V
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->mPreviewLayer:Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;

    if-eqz v0, :cond_0

    .line 234
    invoke-virtual {v0}, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->onWallpaperColorChanged()V

    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3

    const-string v0, "MIUIWidgetDeviceAdapter.LargeScreenMIUIWidgetDeviceAdapter"

    .line 184
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowFocusChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 186
    invoke-virtual {p0}, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->exitEditMode()V

    :cond_0
    return-void
.end method

.method protected shouldDisableRecent()Z
    .locals 1

    .line 228
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

    .line 99
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_6

    if-nez p1, :cond_0

    goto :goto_1

    .line 103
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    const-string v1, "miuiWidgetId"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 104
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "[1-9][0-9]*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 111
    :cond_1
    instance-of v1, p1, Lcom/miui/home/launcher/HostViewContainer;

    if-nez v1, :cond_2

    return-void

    .line 115
    :cond_2
    move-object v1, p1

    check-cast v1, Lcom/miui/home/launcher/HostViewContainer;

    invoke-interface {v1}, Lcom/miui/home/launcher/HostViewContainer;->getWidgetId()I

    move-result v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-eq v1, v0, :cond_3

    return-void

    .line 119
    :cond_3
    instance-of v0, p1, Lcom/miui/miuiwidget/LargeScreenTouchTarget;

    if-nez v0, :cond_4

    return-void

    .line 122
    :cond_4
    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->enterEditModeIndeed(Landroid/view/View;Landroid/content/Intent;I)V

    return-void

    :cond_5
    :goto_0
    return-void

    :cond_6
    :goto_1
    return-void
.end method

.method public startIntentSender(Landroid/view/View;Landroid/content/IntentSender;Landroid/content/Intent;I)V
    .locals 1

    if-eqz p3, :cond_3

    if-eqz p1, :cond_3

    .line 60
    iget-object p2, p0, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->mTouchedView:Landroid/view/View;

    if-eqz p2, :cond_0

    goto :goto_0

    .line 65
    :cond_0
    instance-of p2, p1, Lcom/miui/miuiwidget/LargeScreenTouchTarget;

    if-nez p2, :cond_1

    const-string p1, "MIUIWidgetDeviceAdapter.LargeScreenMIUIWidgetDeviceAdapter"

    const-string p2, "widgetView is not a instanceof LargeScreenTouchTarget"

    .line 66
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 73
    :cond_1
    move-object p2, p1

    check-cast p2, Lcom/miui/miuiwidget/LargeScreenTouchTarget;

    invoke-virtual {p3}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/miui/miuiwidget/LargeScreenTouchTarget;->touchIn(Landroid/graphics/Rect;)Z

    move-result p2

    if-nez p2, :cond_2

    const-string p1, "MIUIWidgetDeviceAdapter.LargeScreenMIUIWidgetDeviceAdapter"

    const-string p2, "touch target mismatch"

    .line 74
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 77
    :cond_2
    invoke-virtual {p0, p1, p3, p4}, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->enterEditMode(Landroid/view/View;Landroid/content/Intent;I)V

    return-void

    :cond_3
    :goto_0
    const-string p2, "MIUIWidgetDeviceAdapter.LargeScreenMIUIWidgetDeviceAdapter"

    .line 61
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "startIntentSender return : "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " , "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->mTouchedView:Landroid/view/View;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
