.class public abstract Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;
.super Ljava/lang/Object;
.source "LargeScreenMIUIWidgetDeviceAdapter.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnDrawListener;
.implements Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;
.implements Lcom/miui/home/launcher/ControlPanelReceiver$Callback;
.implements Lcom/miui/home/launcher/widget/device/MIUIWidgetDeviceAdapter;


# static fields
.field private static final TAG:Ljava/lang/String; = "MIUIWidgetDeviceAdapter.LargeScreenMIUIWidgetDeviceAdapter"


# instance fields
.field protected mContext:Landroid/app/Activity;

.field private mControlPanelReceiver:Lcom/miui/home/launcher/ControlPanelReceiver;

.field protected mPreviewLayer:Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;

.field protected mStopped:Z

.field protected mTouchedView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic lambda$attachPreviewLayer$0(Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 2

    .line 155
    iget-object p1, p0, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->mContext:Landroid/app/Activity;

    invoke-static {p1}, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompat;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompat;->getCurrentWallpaper()Landroid/graphics/Bitmap;

    move-result-object p1

    .line 156
    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->mContext:Landroid/app/Activity;

    const/16 v1, 0x64

    invoke-static {v0, p1, v1}, Lcom/android/systemui/shared/recents/utilities/Graphics;->fastBlur(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic lambda$attachPreviewLayer$1(Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;Landroid/graphics/Bitmap;)V
    .locals 3

    .line 159
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->mTouchedView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->mPreviewLayer:Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->mContext:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 163
    iget-object p1, p0, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->mPreviewLayer:Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;

    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->mTouchedView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->createPreviewBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->drawPreview(Landroid/graphics/Bitmap;)V

    .line 164
    iget-object p1, p0, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->mTouchedView:Landroid/view/View;

    instance-of p1, p1, Lcom/miui/home/launcher/HostViewContainer;

    if-eqz p1, :cond_1

    .line 165
    iget-object p1, p0, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->mPreviewLayer:Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;

    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->mTouchedView:Landroid/view/View;

    check-cast v0, Lcom/miui/home/launcher/HostViewContainer;

    invoke-interface {v0}, Lcom/miui/home/launcher/HostViewContainer;->getCornerRadius()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->setPreviewCorner(F)V

    .line 167
    :cond_1
    iget-object p1, p0, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->mContext:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->mPreviewLayer:Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 168
    iget-object p1, p0, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->mPreviewLayer:Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;

    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->mTouchedView:Landroid/view/View;

    check-cast v0, Lcom/miui/miuiwidget/LargeScreenTouchTarget;

    invoke-interface {v0}, Lcom/miui/miuiwidget/LargeScreenTouchTarget;->getBoundsOnScreen()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->updatePreviewPosition(Landroid/graphics/Rect;)V

    .line 170
    iget-object p1, p0, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->mControlPanelReceiver:Lcom/miui/home/launcher/ControlPanelReceiver;

    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->mContext:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/ControlPanelReceiver;->register(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 171
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->changeMIUIWidgetEditMode(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "MIUIWidgetDeviceAdapter.LargeScreenMIUIWidgetDeviceAdapter"

    const-string v1, "attachPreviewLayer error"

    .line 173
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 174
    invoke-virtual {p0}, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->exitEditMode()V

    :goto_0
    return-void
.end method


# virtual methods
.method protected attachPreviewLayer()V
    .locals 3

    .line 150
    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->mPreviewLayer:Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;

    if-nez v0, :cond_0

    .line 151
    new-instance v0, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;

    iget-object v1, p0, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->mContext:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->mPreviewLayer:Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;

    .line 154
    :cond_0
    new-instance v0, Lcom/miui/home/launcher/widget/device/-$$Lambda$LargeScreenMIUIWidgetDeviceAdapter$A1fVs8THBugeQBoZk5MmbsmrTnI;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/widget/device/-$$Lambda$LargeScreenMIUIWidgetDeviceAdapter$A1fVs8THBugeQBoZk5MmbsmrTnI;-><init>(Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;)V

    new-instance v1, Lcom/miui/home/launcher/widget/device/-$$Lambda$LargeScreenMIUIWidgetDeviceAdapter$k5FJJZWmvqiZiIWjAJ_gsBceaa4;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/widget/device/-$$Lambda$LargeScreenMIUIWidgetDeviceAdapter$k5FJJZWmvqiZiIWjAJ_gsBceaa4;-><init>(Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;)V

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method

.method protected createPreviewBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 2

    .line 233
    instance-of v0, p1, Lcom/miui/home/launcher/HostViewContainer;

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    .line 234
    check-cast p1, Lcom/miui/home/launcher/HostViewContainer;

    invoke-interface {p1}, Lcom/miui/home/launcher/HostViewContainer;->getHostView()Landroid/view/View;

    move-result-object p1

    .line 235
    invoke-static {p1, v1}, Lcom/miui/home/launcher/DragController;->createViewBitmap(Landroid/view/View;F)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    .line 237
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->mTouchedView:Landroid/view/View;

    invoke-static {p1, v1}, Lcom/miui/home/launcher/DragController;->createViewBitmap(Landroid/view/View;F)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method protected detachPreviewLayer()V
    .locals 2

    .line 191
    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->mControlPanelReceiver:Lcom/miui/home/launcher/ControlPanelReceiver;

    iget-object v1, p0, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->mContext:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/ControlPanelReceiver;->unregister(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 192
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->changeMIUIWidgetEditMode(Z)V

    .line 193
    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->mPreviewLayer:Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;

    if-nez v0, :cond_0

    return-void

    .line 196
    :cond_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 197
    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->mPreviewLayer:Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->mPreviewLayer:Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 198
    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->mPreviewLayer:Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method protected enterEditMode(Landroid/view/View;Landroid/content/Intent;I)V
    .locals 4

    .line 93
    move-object v0, p1

    check-cast v0, Lcom/miui/miuiwidget/LargeScreenTouchTarget;

    .line 94
    invoke-virtual {p2}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/miui/miuiwidget/LargeScreenTouchTarget;->getTouchViewOptions(Landroid/graphics/Rect;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "MIUIWidgetDeviceAdapter.LargeScreenMIUIWidgetDeviceAdapter"

    .line 95
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

    .line 96
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_0

    .line 97
    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->enterEditModeIndeed(Landroid/view/View;Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method

.method protected enterEditModeIndeed(Landroid/view/View;Landroid/content/Intent;I)V
    .locals 1

    .line 135
    iput-object p1, p0, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->mTouchedView:Landroid/view/View;

    const-string v0, "miuiWidgetScreenBound"

    .line 137
    invoke-virtual {p0, p1, p3}, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->getOffsetWidgetScreenBound(Landroid/view/View;I)Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "miuiWidgetScreenSide"

    .line 138
    invoke-virtual {p2, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 139
    iget-object p1, p0, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->mTouchedView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    return-void
.end method

.method protected exitEditMode()V
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->mTouchedView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 181
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    .line 182
    invoke-virtual {p0}, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->detachPreviewLayer()V

    const/4 v0, 0x0

    .line 183
    iput-object v0, p0, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->mTouchedView:Landroid/view/View;

    :cond_0
    return-void
.end method

.method protected getOffsetWidgetScreenBound(Landroid/view/View;I)Landroid/graphics/Rect;
    .locals 0

    .line 143
    check-cast p1, Lcom/miui/miuiwidget/LargeScreenTouchTarget;

    invoke-interface {p1}, Lcom/miui/miuiwidget/LargeScreenTouchTarget;->getBoundsOnScreen()Landroid/graphics/Rect;

    move-result-object p1

    return-object p1
.end method

.method public getSystemService(Ljava/lang/Object;)V
    .locals 1

    .line 56
    instance-of v0, p1, Landroid/view/LayoutInflater;

    if-eqz v0, :cond_0

    .line 57
    check-cast p1, Landroid/view/LayoutInflater;

    .line 58
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getFactory2()Landroid/view/LayoutInflater$Factory2;

    move-result-object v0

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Lcom/miui/home/launcher/widget/device/LauncherWidgetLayoutFactory;

    invoke-direct {v0}, Lcom/miui/home/launcher/widget/device/LauncherWidgetLayoutFactory;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/LayoutInflater;->setFactory2(Landroid/view/LayoutInflater$Factory2;)V

    :cond_0
    return-void
.end method

.method public init(Landroid/app/Activity;)V
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
    new-instance p1, Lcom/miui/home/launcher/ControlPanelReceiver;

    invoke-direct {p1}, Lcom/miui/home/launcher/ControlPanelReceiver;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->mControlPanelReceiver:Lcom/miui/home/launcher/ControlPanelReceiver;

    .line 51
    iget-object p1, p0, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->mControlPanelReceiver:Lcom/miui/home/launcher/ControlPanelReceiver;

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/ControlPanelReceiver;->setCallback(Lcom/miui/home/launcher/ControlPanelReceiver$Callback;)V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 229
    invoke-virtual {p0}, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->exitEditMode()V

    return-void
.end method

.method public onDraw()V
    .locals 2

    .line 242
    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->mTouchedView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->mPreviewLayer:Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;

    if-eqz v1, :cond_0

    .line 243
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->createPreviewBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->drawPreview(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public onPanelClose()V
    .locals 2

    .line 257
    invoke-virtual {p0}, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->shouldDisableRecent()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MIUIWidgetDeviceAdapter.LargeScreenMIUIWidgetDeviceAdapter"

    const-string v1, "onPanelClose disableRecent"

    .line 258
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 259
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->changeMIUIWidgetEditMode(Z)V

    :cond_0
    return-void
.end method

.method public onPanelOpen()V
    .locals 2

    .line 249
    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->mTouchedView:Landroid/view/View;

    if-eqz v0, :cond_0

    const-string v0, "MIUIWidgetDeviceAdapter.LargeScreenMIUIWidgetDeviceAdapter"

    const-string v1, "onPanelOpen resetRecent"

    .line 250
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 251
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->changeMIUIWidgetEditMode(Z)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    const-string v0, "MIUIWidgetDeviceAdapter.LargeScreenMIUIWidgetDeviceAdapter"

    const-string v1, "onStart"

    .line 212
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 213
    iput-boolean v0, p0, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->mStopped:Z

    .line 214
    invoke-virtual {p0}, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->shouldDisableRecent()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MIUIWidgetDeviceAdapter.LargeScreenMIUIWidgetDeviceAdapter"

    const-string v1, "onStart disableRecent"

    .line 215
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 216
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->changeMIUIWidgetEditMode(Z)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    const-string v0, "MIUIWidgetDeviceAdapter.LargeScreenMIUIWidgetDeviceAdapter"

    const-string v1, "onStop reset"

    .line 222
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 223
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->changeMIUIWidgetEditMode(Z)V

    const/4 v0, 0x1

    .line 224
    iput-boolean v0, p0, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->mStopped:Z

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3

    const-string v0, "MIUIWidgetDeviceAdapter.LargeScreenMIUIWidgetDeviceAdapter"

    .line 204
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowFocusChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 206
    invoke-virtual {p0}, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->exitEditMode()V

    :cond_0
    return-void
.end method

.method protected shouldDisableRecent()Z
    .locals 1

    .line 264
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

    .line 108
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_6

    if-nez p1, :cond_0

    goto :goto_1

    .line 112
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    const-string v1, "miuiWidgetId"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 113
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "[1-9][0-9]*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 120
    :cond_1
    instance-of v1, p1, Lcom/miui/home/launcher/HostViewContainer;

    if-nez v1, :cond_2

    return-void

    .line 124
    :cond_2
    move-object v1, p1

    check-cast v1, Lcom/miui/home/launcher/HostViewContainer;

    invoke-interface {v1}, Lcom/miui/home/launcher/HostViewContainer;->getWidgetId()I

    move-result v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-eq v1, v0, :cond_3

    return-void

    .line 128
    :cond_3
    instance-of v0, p1, Lcom/miui/miuiwidget/LargeScreenTouchTarget;

    if-nez v0, :cond_4

    return-void

    .line 131
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

    .line 69
    iget-object p2, p0, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->mTouchedView:Landroid/view/View;

    if-eqz p2, :cond_0

    goto :goto_0

    .line 74
    :cond_0
    instance-of p2, p1, Lcom/miui/miuiwidget/LargeScreenTouchTarget;

    if-nez p2, :cond_1

    const-string p1, "MIUIWidgetDeviceAdapter.LargeScreenMIUIWidgetDeviceAdapter"

    const-string p2, "widgetView is not a instanceof LargeScreenTouchTarget"

    .line 75
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 82
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

    .line 83
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 86
    :cond_2
    invoke-virtual {p0, p1, p3, p4}, Lcom/miui/home/launcher/widget/device/LargeScreenMIUIWidgetDeviceAdapter;->enterEditMode(Landroid/view/View;Landroid/content/Intent;I)V

    return-void

    :cond_3
    :goto_0
    const-string p2, "MIUIWidgetDeviceAdapter.LargeScreenMIUIWidgetDeviceAdapter"

    .line 70
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
