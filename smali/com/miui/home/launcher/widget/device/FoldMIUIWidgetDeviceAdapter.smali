.class Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;
.super Ljava/lang/Object;
.source "FoldMIUIWidgetDeviceAdapter.java"

# interfaces
.implements Landroid/content/ComponentCallbacks;
.implements Landroid/view/ViewTreeObserver$OnDrawListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;
.implements Lcom/miui/home/launcher/widget/device/MIUIWidgetDeviceAdapter;


# static fields
.field private static final TAG:Ljava/lang/String; = "MIUIWidgetDeviceAdapter"


# instance fields
.field private mConfiguration:Landroid/content/res/Configuration;

.field private mContext:Landroid/app/Activity;

.field private mPreviewLayer:Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;

.field private mScreenSize:I

.field private mTouchedView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private attachPreviewLayer()V
    .locals 3

    .line 186
    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->mPreviewLayer:Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;

    if-nez v0, :cond_0

    .line 187
    new-instance v0, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;

    iget-object v1, p0, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->mContext:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->mPreviewLayer:Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;

    .line 190
    :cond_0
    new-instance v0, Lcom/miui/home/launcher/widget/device/-$$Lambda$FoldMIUIWidgetDeviceAdapter$8v8uOaGJTG9KMR2xE4qU5tKaZV8;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/widget/device/-$$Lambda$FoldMIUIWidgetDeviceAdapter$8v8uOaGJTG9KMR2xE4qU5tKaZV8;-><init>(Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;)V

    new-instance v1, Lcom/miui/home/launcher/widget/device/-$$Lambda$FoldMIUIWidgetDeviceAdapter$q7tiZJ8JTFGpnSP5txgLXsqJQf0;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/widget/device/-$$Lambda$FoldMIUIWidgetDeviceAdapter$q7tiZJ8JTFGpnSP5txgLXsqJQf0;-><init>(Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;)V

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method

.method private createPreviewBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 2

    .line 254
    instance-of v0, p1, Lcom/miui/home/launcher/HostViewContainer;

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    .line 255
    check-cast p1, Lcom/miui/home/launcher/HostViewContainer;

    invoke-interface {p1}, Lcom/miui/home/launcher/HostViewContainer;->getHostView()Landroid/view/View;

    move-result-object p1

    .line 256
    invoke-static {p1, v1}, Lcom/miui/home/launcher/DragController;->createViewBitmap(Landroid/view/View;F)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    .line 258
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->mTouchedView:Landroid/view/View;

    invoke-static {p1, v1}, Lcom/miui/home/launcher/DragController;->createViewBitmap(Landroid/view/View;F)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method private detachPreviewLayer()V
    .locals 2

    .line 235
    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->mPreviewLayer:Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;

    if-nez v0, :cond_0

    return-void

    .line 238
    :cond_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 239
    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->mPreviewLayer:Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->mPreviewLayer:Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 240
    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->mPreviewLayer:Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 242
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->mTouchedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    .line 243
    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->mTouchedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method private enterEditModeIfNeed(Landroid/view/View;Landroid/content/Intent;ZI)V
    .locals 6

    .line 153
    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->mTouchedView:Landroid/view/View;

    if-eqz v0, :cond_0

    const-string p1, "MIUIWidgetDeviceAdapter"

    const-string p2, "Already in edit mode "

    .line 154
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "MIUIWidgetDeviceAdapter"

    .line 157
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enterEditModeIfNeed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iput-object p1, p0, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->mTouchedView:Landroid/view/View;

    if-eqz p3, :cond_1

    .line 163
    invoke-direct {p0}, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->attachPreviewLayer()V

    .line 166
    :cond_1
    iget v0, p0, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->mScreenSize:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 167
    check-cast p1, Lcom/miui/miuiwidget/LargeScreenTouchTarget;

    invoke-interface {p1}, Lcom/miui/miuiwidget/LargeScreenTouchTarget;->getBoundsOnScreen()Landroid/graphics/Rect;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x2

    .line 169
    new-array p1, p1, [I

    .line 170
    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->mTouchedView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p4, v1, :cond_3

    .line 172
    aget v2, p1, v0

    iget-object v3, p0, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->mTouchedView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    aput v2, p1, v0

    .line 174
    :cond_3
    new-instance v2, Landroid/graphics/Rect;

    aget v3, p1, v0

    aget v4, p1, v1

    aget v0, p1, v0

    iget-object v5, p0, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->mTouchedView:Landroid/view/View;

    .line 175
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v0, v5

    aget p1, p1, v1

    iget-object v1, p0, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->mTouchedView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr p1, v1

    invoke-direct {v2, v3, v4, v0, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object p1, v2

    :goto_0
    const-string v0, "miuiWidgetScreenBound"

    .line 177
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "isLargeScreenMode"

    .line 178
    invoke-virtual {p2, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "miuiWidgetScreenSide"

    .line 179
    invoke-virtual {p2, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-void
.end method

.method private exitEditMode()V
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->mTouchedView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 263
    invoke-direct {p0}, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->detachPreviewLayer()V

    const/4 v0, 0x0

    .line 264
    iput-object v0, p0, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->mTouchedView:Landroid/view/View;

    :cond_0
    return-void
.end method

.method private findTouchTarget(Landroid/view/View;Landroid/content/Intent;I)Z
    .locals 5

    .line 85
    invoke-virtual {p2}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 87
    instance-of v1, p1, Lcom/miui/miuiwidget/LargeScreenTouchTarget;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 90
    :cond_0
    move-object v1, p1

    check-cast v1, Lcom/miui/miuiwidget/LargeScreenTouchTarget;

    .line 94
    invoke-interface {v1, v0}, Lcom/miui/miuiwidget/LargeScreenTouchTarget;->touchIn(Landroid/graphics/Rect;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string p1, "MIUIWidgetDeviceAdapter"

    const-string p2, "touch target mismatch"

    .line 95
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 99
    :cond_1
    iget-object v3, p0, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->mContext:Landroid/app/Activity;

    invoke-static {v3}, Lcom/miui/home/launcher/DeviceConfig;->isLargeScreen(Landroid/content/Context;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    .line 103
    invoke-interface {v1, v0}, Lcom/miui/miuiwidget/LargeScreenTouchTarget;->getTouchViewOptions(Landroid/graphics/Rect;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, "miuiWidgetId"

    const/4 v2, -0x1

    .line 104
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_3

    .line 105
    invoke-direct {p0, p1, p2, v4, p3}, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->enterEditModeIfNeed(Landroid/view/View;Landroid/content/Intent;ZI)V

    goto :goto_0

    .line 108
    :cond_2
    invoke-direct {p0, p1, p2, v2, p3}, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->enterEditModeIfNeed(Landroid/view/View;Landroid/content/Intent;ZI)V

    :cond_3
    :goto_0
    return v4
.end method

.method private findTouchTarget(Landroid/view/View;Landroid/content/Intent;II)Z
    .locals 2

    .line 136
    instance-of v0, p1, Lcom/miui/home/launcher/HostViewContainer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 140
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/miui/home/launcher/HostViewContainer;

    invoke-interface {v0}, Lcom/miui/home/launcher/HostViewContainer;->getWidgetId()I

    move-result v0

    if-eq v0, p3, :cond_1

    return v1

    .line 144
    :cond_1
    instance-of p3, p1, Lcom/miui/miuiwidget/LargeScreenTouchTarget;

    if-nez p3, :cond_2

    return v1

    .line 148
    :cond_2
    iget-object p3, p0, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->mContext:Landroid/app/Activity;

    invoke-static {p3}, Lcom/miui/home/launcher/DeviceConfig;->isLargeScreen(Landroid/content/Context;)Z

    move-result p3

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->enterEditModeIfNeed(Landroid/view/View;Landroid/content/Intent;ZI)V

    const/4 p1, 0x1

    return p1
.end method

.method public static synthetic lambda$attachPreviewLayer$0(Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 2

    .line 191
    iget-object p1, p0, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->mContext:Landroid/app/Activity;

    invoke-static {p1}, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompat;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompat;->getCurrentWallpaper()Landroid/graphics/Bitmap;

    move-result-object p1

    .line 192
    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->mContext:Landroid/app/Activity;

    const/16 v1, 0x64

    invoke-static {v0, p1, v1}, Lcom/android/systemui/shared/recents/utilities/Graphics;->fastBlur(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic lambda$attachPreviewLayer$1(Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;Landroid/graphics/Bitmap;)V
    .locals 3

    .line 195
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->mTouchedView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->mPreviewLayer:Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->mContext:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 199
    iget-object p1, p0, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->mPreviewLayer:Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;

    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->mTouchedView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->createPreviewBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->drawPreview(Landroid/graphics/Bitmap;)V

    .line 200
    iget-object p1, p0, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->mTouchedView:Landroid/view/View;

    instance-of p1, p1, Lcom/miui/home/launcher/HostViewContainer;

    if-eqz p1, :cond_1

    .line 201
    iget-object p1, p0, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->mPreviewLayer:Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;

    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->mTouchedView:Landroid/view/View;

    check-cast v0, Lcom/miui/home/launcher/HostViewContainer;

    invoke-interface {v0}, Lcom/miui/home/launcher/HostViewContainer;->getCornerRadius()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->setPreviewCorner(F)V

    .line 203
    :cond_1
    iget-object p1, p0, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->mContext:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->mPreviewLayer:Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 204
    iget-object p1, p0, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->mTouchedView:Landroid/view/View;

    check-cast p1, Lcom/miui/miuiwidget/LargeScreenTouchTarget;

    invoke-interface {p1}, Lcom/miui/miuiwidget/LargeScreenTouchTarget;->getBoundsOnScreen()Landroid/graphics/Rect;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->updatePreviewPosition(Landroid/graphics/Rect;)V

    .line 206
    iget-object p1, p0, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->mTouchedView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    .line 207
    iget-object p1, p0, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->mTouchedView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "MIUIWidgetDeviceAdapter"

    const-string v1, "attachPreviewLayer error"

    .line 209
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 210
    invoke-direct {p0}, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->exitEditMode()V

    :goto_0
    return-void
.end method

.method private updatePreviewPosition(Landroid/graphics/Rect;)V
    .locals 8

    if-nez p1, :cond_1

    const/4 p1, 0x2

    .line 217
    new-array p1, p1, [I

    .line 218
    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->mTouchedView:Landroid/view/View;

    .line 219
    instance-of v1, v0, Lcom/miui/home/launcher/HostViewContainer;

    if-eqz v1, :cond_0

    .line 220
    check-cast v0, Lcom/miui/home/launcher/HostViewContainer;

    invoke-interface {v0}, Lcom/miui/home/launcher/HostViewContainer;->getHostView()Landroid/view/View;

    move-result-object v0

    .line 222
    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 224
    iget-object v1, p0, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->mPreviewLayer:Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;

    new-instance v2, Landroid/graphics/Rect;

    const/4 v3, 0x0

    aget v4, p1, v3

    const/4 v5, 0x1

    aget v6, p1, v5

    aget v3, p1, v3

    .line 225
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int/2addr v3, v7

    aget p1, p1, v5

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/2addr p1, v0

    invoke-direct {v2, v4, v6, v3, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 224
    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->updatePreviewPosition(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 227
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->mPreviewLayer:Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->updatePreviewPosition(Landroid/graphics/Rect;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getSystemService(Ljava/lang/Object;)V
    .locals 2

    .line 61
    instance-of v0, p1, Landroid/view/LayoutInflater;

    if-eqz v0, :cond_0

    .line 62
    check-cast p1, Landroid/view/LayoutInflater;

    .line 63
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getFactory2()Landroid/view/LayoutInflater$Factory2;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "MIUIWidgetDeviceAdapter"

    const-string v1, "getSystemService LauncherLayoutFactory"

    .line 64
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    new-instance v0, Lcom/miui/home/launcher/widget/device/LauncherWidgetLayoutFactory;

    invoke-direct {v0}, Lcom/miui/home/launcher/widget/device/LauncherWidgetLayoutFactory;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/LayoutInflater;->setFactory2(Landroid/view/LayoutInflater$Factory2;)V

    :cond_0
    return-void
.end method

.method public init(Landroid/app/Activity;)V
    .locals 1

    .line 52
    iput-object p1, p0, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->mContext:Landroid/app/Activity;

    .line 53
    iget-object p1, p0, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->mContext:Landroid/app/Activity;

    invoke-virtual {p1, p0}, Landroid/app/Activity;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 54
    iget-object p1, p0, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->mContext:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnWindowFocusChangeListener(Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;)V

    .line 55
    new-instance p1, Landroid/content/res/Configuration;

    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->mContext:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object p1, p0, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->mConfiguration:Landroid/content/res/Configuration;

    .line 56
    iget-object p1, p0, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->mConfiguration:Landroid/content/res/Configuration;

    iget p1, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 p1, p1, 0xf

    iput p1, p0, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->mScreenSize:I

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 271
    iget-object p1, p0, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->mConfiguration:Landroid/content/res/Configuration;

    iget p1, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 p1, p1, 0xf

    .line 272
    iget v0, p0, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->mScreenSize:I

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->mTouchedView:Landroid/view/View;

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 274
    invoke-direct {p0}, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->attachPreviewLayer()V

    goto :goto_0

    .line 276
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->detachPreviewLayer()V

    .line 279
    :cond_1
    :goto_0
    iput p1, p0, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->mScreenSize:I

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 289
    invoke-direct {p0}, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->exitEditMode()V

    .line 290
    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->mContext:Landroid/app/Activity;

    invoke-virtual {v0, p0}, Landroid/app/Activity;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    return-void
.end method

.method public onDraw()V
    .locals 2

    .line 248
    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->mTouchedView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->mPreviewLayer:Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;

    if-eqz v1, :cond_0

    .line 249
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->createPreviewBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->drawPreview(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public onGlobalLayout()V
    .locals 1

    .line 303
    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->mTouchedView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->mPreviewLayer:Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 304
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->updatePreviewPosition(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public onLowMemory()V
    .locals 0

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3

    const-string v0, "MIUIWidgetDeviceAdapter"

    .line 295
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowFocusChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 297
    invoke-direct {p0}, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->exitEditMode()V

    :cond_0
    return-void
.end method

.method public startActivity(Landroid/view/View;Landroid/content/Intent;I)V
    .locals 2

    .line 120
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    .line 124
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    const-string v1, "miuiWidgetId"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 125
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "[1-9][0-9]*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 129
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->findTouchTarget(Landroid/view/View;Landroid/content/Intent;II)Z

    return-void

    :cond_2
    :goto_0
    return-void

    :cond_3
    :goto_1
    return-void
.end method

.method public startIntentSender(Landroid/view/View;Landroid/content/IntentSender;Landroid/content/Intent;I)V
    .locals 0

    if-eqz p3, :cond_1

    if-eqz p1, :cond_1

    .line 75
    iget-object p2, p0, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->mTouchedView:Landroid/view/View;

    if-eqz p2, :cond_0

    goto :goto_0

    .line 78
    :cond_0
    invoke-direct {p0, p1, p3, p4}, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->findTouchTarget(Landroid/view/View;Landroid/content/Intent;I)Z

    return-void

    :cond_1
    :goto_0
    return-void
.end method
