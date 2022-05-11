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

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private attachPreviewLayer()V
    .locals 3

    .line 192
    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->mPreviewLayer:Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;

    if-nez v0, :cond_0

    .line 193
    new-instance v0, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;

    iget-object v1, p0, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->mContext:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->mPreviewLayer:Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;

    .line 196
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

    .line 260
    instance-of v0, p1, Lcom/miui/home/launcher/HostViewContainer;

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    .line 261
    check-cast p1, Lcom/miui/home/launcher/HostViewContainer;

    invoke-interface {p1}, Lcom/miui/home/launcher/HostViewContainer;->getHostView()Landroid/view/View;

    move-result-object p1

    .line 262
    invoke-static {p1, v1}, Lcom/miui/home/launcher/DragController;->createViewBitmap(Landroid/view/View;F)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    .line 264
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->mTouchedView:Landroid/view/View;

    invoke-static {p1, v1}, Lcom/miui/home/launcher/DragController;->createViewBitmap(Landroid/view/View;F)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method private detachPreviewLayer()V
    .locals 2

    .line 241
    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->mPreviewLayer:Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;

    if-nez v0, :cond_0

    return-void

    .line 244
    :cond_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 245
    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->mPreviewLayer:Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->mPreviewLayer:Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 246
    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->mPreviewLayer:Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 248
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->mTouchedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    .line 249
    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->mTouchedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method private enterEditModeIfNeed(Landroid/view/View;Landroid/content/Intent;ZI)V
    .locals 5

    .line 158
    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->mTouchedView:Landroid/view/View;

    if-eqz v0, :cond_0

    const-string p1, "MIUIWidgetDeviceAdapter"

    const-string p2, "Already in edit mode "

    .line 159
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "MIUIWidgetDeviceAdapter"

    .line 162
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enterEditModeIfNeed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "MIUIWidgetDeviceAdapter"

    .line 163
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enterEditModeIfNeed screenSide = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iput-object p1, p0, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->mTouchedView:Landroid/view/View;

    if-eqz p3, :cond_1

    .line 169
    invoke-direct {p0}, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->attachPreviewLayer()V

    .line 172
    :cond_1
    check-cast p1, Lcom/miui/miuiwidget/LargeScreenTouchTarget;

    invoke-interface {p1}, Lcom/miui/miuiwidget/LargeScreenTouchTarget;->getBoundsOnScreen()Landroid/graphics/Rect;

    move-result-object p1

    .line 173
    iget v0, p0, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->mScreenSize:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    .line 174
    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->mTouchedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070180

    invoke-static {v0, v1}, Landroidx/core/content/res/ResourcesCompat;->getFloat(Landroid/content/res/Resources;I)F

    move-result v0

    const-string v1, "MIUIWidgetDeviceAdapter"

    .line 175
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enterEditModeIfNeed scale = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
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

    if-ne p4, p1, :cond_2

    .line 178
    iget-object p1, p0, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->mTouchedView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, v0

    .line 179
    iget v0, v1, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    add-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 180
    iget v0, v1, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    add-float/2addr v0, p1

    float-to-int p1, v0

    iput p1, v1, Landroid/graphics/Rect;->right:I

    :cond_2
    move-object p1, v1

    :cond_3
    const-string v0, "miuiWidgetScreenBound"

    .line 183
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "isLargeScreenMode"

    .line 184
    invoke-virtual {p2, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "miuiWidgetScreenSide"

    .line 185
    invoke-virtual {p2, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-void
.end method

.method private exitEditMode()V
    .locals 1

    .line 268
    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->mTouchedView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 269
    invoke-direct {p0}, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->detachPreviewLayer()V

    const/4 v0, 0x0

    .line 270
    iput-object v0, p0, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->mTouchedView:Landroid/view/View;

    :cond_0
    return-void
.end method

.method private findTouchTarget(Landroid/view/View;Landroid/content/Intent;I)Z
    .locals 5

    .line 89
    invoke-virtual {p2}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 91
    instance-of v1, p1, Lcom/miui/miuiwidget/LargeScreenTouchTarget;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 94
    :cond_0
    move-object v1, p1

    check-cast v1, Lcom/miui/miuiwidget/LargeScreenTouchTarget;

    .line 98
    invoke-interface {v1, v0}, Lcom/miui/miuiwidget/LargeScreenTouchTarget;->touchIn(Landroid/graphics/Rect;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string p1, "MIUIWidgetDeviceAdapter"

    const-string p2, "touch target mismatch"

    .line 99
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 103
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreen()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    .line 107
    invoke-interface {v1, v0}, Lcom/miui/miuiwidget/LargeScreenTouchTarget;->getTouchViewOptions(Landroid/graphics/Rect;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "MIUIWidgetDeviceAdapter"

    .line 108
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "findTouchTarget "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_3

    const-string v1, "miuiWidgetId"

    const/4 v2, -0x1

    .line 109
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_3

    .line 110
    invoke-direct {p0, p1, p2, v4, p3}, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->enterEditModeIfNeed(Landroid/view/View;Landroid/content/Intent;ZI)V

    goto :goto_0

    .line 113
    :cond_2
    invoke-direct {p0, p1, p2, v2, p3}, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->enterEditModeIfNeed(Landroid/view/View;Landroid/content/Intent;ZI)V

    :cond_3
    :goto_0
    return v4
.end method

.method private findTouchTarget(Landroid/view/View;Landroid/content/Intent;II)Z
    .locals 2

    .line 141
    instance-of v0, p1, Lcom/miui/home/launcher/HostViewContainer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 145
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/miui/home/launcher/HostViewContainer;

    invoke-interface {v0}, Lcom/miui/home/launcher/HostViewContainer;->getWidgetId()I

    move-result v0

    if-eq v0, p3, :cond_1

    return v1

    .line 149
    :cond_1
    instance-of p3, p1, Lcom/miui/miuiwidget/LargeScreenTouchTarget;

    if-nez p3, :cond_2

    return v1

    .line 153
    :cond_2
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p3

    invoke-virtual {p3}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreen()Z

    move-result p3

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->enterEditModeIfNeed(Landroid/view/View;Landroid/content/Intent;ZI)V

    const/4 p1, 0x1

    return p1
.end method

.method public static synthetic lambda$attachPreviewLayer$0(Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 2

    .line 197
    iget-object p1, p0, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->mContext:Landroid/app/Activity;

    invoke-static {p1}, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompat;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompat;->getCurrentWallpaper()Landroid/graphics/Bitmap;

    move-result-object p1

    .line 198
    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->mContext:Landroid/app/Activity;

    const/16 v1, 0x64

    invoke-static {v0, p1, v1}, Lcom/android/systemui/shared/recents/utilities/Graphics;->fastBlur(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic lambda$attachPreviewLayer$1(Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;Landroid/graphics/Bitmap;)V
    .locals 3

    .line 201
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->mTouchedView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->mPreviewLayer:Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->mContext:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 205
    iget-object p1, p0, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->mPreviewLayer:Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;

    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->mTouchedView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->createPreviewBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->drawPreview(Landroid/graphics/Bitmap;)V

    .line 206
    iget-object p1, p0, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->mTouchedView:Landroid/view/View;

    instance-of p1, p1, Lcom/miui/home/launcher/HostViewContainer;

    if-eqz p1, :cond_1

    .line 207
    iget-object p1, p0, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->mPreviewLayer:Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;

    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->mTouchedView:Landroid/view/View;

    check-cast v0, Lcom/miui/home/launcher/HostViewContainer;

    invoke-interface {v0}, Lcom/miui/home/launcher/HostViewContainer;->getCornerRadius()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->setPreviewCorner(F)V

    .line 209
    :cond_1
    iget-object p1, p0, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->mContext:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->mPreviewLayer:Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 210
    iget-object p1, p0, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->mTouchedView:Landroid/view/View;

    check-cast p1, Lcom/miui/miuiwidget/LargeScreenTouchTarget;

    invoke-interface {p1}, Lcom/miui/miuiwidget/LargeScreenTouchTarget;->getBoundsOnScreen()Landroid/graphics/Rect;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->updatePreviewPosition(Landroid/graphics/Rect;)V

    .line 212
    iget-object p1, p0, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->mTouchedView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    .line 213
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

    .line 215
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 216
    invoke-direct {p0}, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->exitEditMode()V

    :goto_0
    return-void
.end method

.method private updatePreviewPosition(Landroid/graphics/Rect;)V
    .locals 8

    if-nez p1, :cond_1

    const/4 p1, 0x2

    .line 223
    new-array p1, p1, [I

    .line 224
    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->mTouchedView:Landroid/view/View;

    .line 225
    instance-of v1, v0, Lcom/miui/home/launcher/HostViewContainer;

    if-eqz v1, :cond_0

    .line 226
    check-cast v0, Lcom/miui/home/launcher/HostViewContainer;

    invoke-interface {v0}, Lcom/miui/home/launcher/HostViewContainer;->getHostView()Landroid/view/View;

    move-result-object v0

    .line 228
    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 230
    iget-object v1, p0, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->mPreviewLayer:Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;

    new-instance v2, Landroid/graphics/Rect;

    const/4 v3, 0x0

    aget v4, p1, v3

    const/4 v5, 0x1

    aget v6, p1, v5

    aget v3, p1, v3

    .line 231
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int/2addr v3, v7

    aget p1, p1, v5

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/2addr p1, v0

    invoke-direct {v2, v4, v6, v3, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 230
    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->updatePreviewPosition(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 233
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->mPreviewLayer:Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->updatePreviewPosition(Landroid/graphics/Rect;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getSystemService(Ljava/lang/Object;)V
    .locals 2

    .line 64
    instance-of v0, p1, Landroid/view/LayoutInflater;

    if-eqz v0, :cond_0

    .line 65
    check-cast p1, Landroid/view/LayoutInflater;

    .line 66
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getFactory2()Landroid/view/LayoutInflater$Factory2;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "MIUIWidgetDeviceAdapter"

    const-string v1, "getSystemService LauncherLayoutFactory"

    .line 67
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    new-instance v0, Lcom/miui/home/launcher/widget/device/LauncherWidgetLayoutFactory;

    invoke-direct {v0}, Lcom/miui/home/launcher/widget/device/LauncherWidgetLayoutFactory;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/LayoutInflater;->setFactory2(Landroid/view/LayoutInflater$Factory2;)V

    :cond_0
    return-void
.end method

.method public init(Landroid/app/Activity;)V
    .locals 1

    .line 55
    iput-object p1, p0, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->mContext:Landroid/app/Activity;

    .line 56
    iget-object p1, p0, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->mContext:Landroid/app/Activity;

    invoke-virtual {p1, p0}, Landroid/app/Activity;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 57
    iget-object p1, p0, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->mContext:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnWindowFocusChangeListener(Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;)V

    .line 58
    new-instance p1, Landroid/content/res/Configuration;

    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->mContext:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object p1, p0, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->mConfiguration:Landroid/content/res/Configuration;

    .line 59
    iget-object p1, p0, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->mConfiguration:Landroid/content/res/Configuration;

    iget p1, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 p1, p1, 0xf

    iput p1, p0, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->mScreenSize:I

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 276
    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 277
    iget-object p1, p0, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->mConfiguration:Landroid/content/res/Configuration;

    iget p1, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 p1, p1, 0xf

    .line 278
    iget v0, p0, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->mScreenSize:I

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->mTouchedView:Landroid/view/View;

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 280
    invoke-direct {p0}, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->attachPreviewLayer()V

    goto :goto_0

    .line 282
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->detachPreviewLayer()V

    .line 285
    :cond_1
    :goto_0
    iput p1, p0, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->mScreenSize:I

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 295
    invoke-direct {p0}, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->exitEditMode()V

    .line 296
    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->mContext:Landroid/app/Activity;

    invoke-virtual {v0, p0}, Landroid/app/Activity;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    return-void
.end method

.method public onDraw()V
    .locals 2

    .line 254
    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->mTouchedView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->mPreviewLayer:Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;

    if-eqz v1, :cond_0

    .line 255
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->createPreviewBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->drawPreview(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public onGlobalLayout()V
    .locals 1

    .line 309
    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->mTouchedView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->mPreviewLayer:Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 310
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

    .line 301
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowFocusChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 303
    invoke-direct {p0}, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->exitEditMode()V

    :cond_0
    return-void
.end method

.method public startActivity(Landroid/view/View;Landroid/content/Intent;I)V
    .locals 2

    .line 125
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    .line 129
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    const-string v1, "miuiWidgetId"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 130
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "[1-9][0-9]*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 134
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

    .line 78
    iget-object p2, p0, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->mTouchedView:Landroid/view/View;

    if-eqz p2, :cond_0

    goto :goto_0

    .line 82
    :cond_0
    invoke-direct {p0, p1, p3, p4}, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->findTouchTarget(Landroid/view/View;Landroid/content/Intent;I)Z

    return-void

    :cond_1
    :goto_0
    const-string p2, "MIUIWidgetDeviceAdapter"

    .line 79
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "startIntentSender return : "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " , "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/miui/home/launcher/widget/device/FoldMIUIWidgetDeviceAdapter;->mTouchedView:Landroid/view/View;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
