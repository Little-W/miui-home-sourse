.class public Lcom/miui/home/recents/views/FloatingTaskView;
.super Landroid/widget/FrameLayout;
.source "FloatingTaskView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/recents/views/FloatingTaskView$FullscreenDrawParams;
    }
.end annotation


# static fields
.field private static sSecondTaskStagePosition:I

.field private static sStartingPosition:Landroid/graphics/RectF;


# instance fields
.field private final mActivity:Lcom/miui/home/launcher/Launcher;

.field private mConfig:Landroid/content/res/Configuration;

.field private final mFullscreenParams:Lcom/miui/home/recents/views/FloatingTaskView$FullscreenDrawParams;

.field private mIcon:Landroid/widget/ImageView;

.field private final mIsRtl:Z

.field private mThumbnailView:Lcom/miui/home/recents/views/FloatingTaskThumbnailView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 52
    new-instance v0, Landroid/graphics/RectF;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    sput-object v0, Lcom/miui/home/recents/views/FloatingTaskView;->sStartingPosition:Landroid/graphics/RectF;

    const/4 v0, -0x1

    .line 53
    sput v0, Lcom/miui/home/recents/views/FloatingTaskView;->sSecondTaskStagePosition:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, p1, v0}, Lcom/miui/home/recents/views/FloatingTaskView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/recents/views/FloatingTaskView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 67
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 68
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/home/recents/views/FloatingTaskView;->mActivity:Lcom/miui/home/launcher/Launcher;

    .line 69
    invoke-virtual {p0}, Lcom/miui/home/recents/views/FloatingTaskView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-static {p2}, Lcom/miui/home/launcher/common/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/miui/home/recents/views/FloatingTaskView;->mIsRtl:Z

    .line 70
    new-instance p2, Lcom/miui/home/recents/views/FloatingTaskView$FullscreenDrawParams;

    invoke-direct {p2, p1}, Lcom/miui/home/recents/views/FloatingTaskView$FullscreenDrawParams;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/miui/home/recents/views/FloatingTaskView;->mFullscreenParams:Lcom/miui/home/recents/views/FloatingTaskView$FullscreenDrawParams;

    .line 71
    new-instance p1, Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/FloatingTaskView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object p1, p0, Lcom/miui/home/recents/views/FloatingTaskView;->mConfig:Landroid/content/res/Configuration;

    return-void
.end method

.method public static getFloatingTaskView(Lcom/miui/home/launcher/Launcher;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;I)Lcom/miui/home/recents/views/FloatingTaskView;
    .locals 3

    .line 102
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 103
    check-cast v0, Landroid/view/ViewGroup;

    .line 104
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p0

    const v1, 0x7f0d0072

    const/4 v2, 0x0

    .line 105
    invoke-virtual {p0, v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/miui/home/recents/views/FloatingTaskView;

    .line 106
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/recents/views/FloatingTaskView;->init(Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;I)V

    .line 107
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/4 p1, 0x1

    .line 108
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/FloatingTaskView;->setClickable(Z)V

    return-object p0
.end method

.method public static getFloatingTaskViewRectF()Landroid/graphics/RectF;
    .locals 1

    .line 149
    sget-object v0, Lcom/miui/home/recents/views/FloatingTaskView;->sStartingPosition:Landroid/graphics/RectF;

    return-object v0
.end method

.method private init(Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;I)V
    .locals 0

    .line 84
    invoke-virtual {p0, p3}, Lcom/miui/home/recents/views/FloatingTaskView;->updateInitialPositionForView(I)V

    const/4 p3, 0x0

    .line 86
    invoke-virtual {p0, p3}, Lcom/miui/home/recents/views/FloatingTaskView;->setPivotX(F)V

    .line 87
    invoke-virtual {p0, p3}, Lcom/miui/home/recents/views/FloatingTaskView;->setPivotY(F)V

    .line 90
    iget-object p3, p0, Lcom/miui/home/recents/views/FloatingTaskView;->mThumbnailView:Lcom/miui/home/recents/views/FloatingTaskThumbnailView;

    invoke-virtual {p3, p1}, Lcom/miui/home/recents/views/FloatingTaskThumbnailView;->setThumbnail(Landroid/graphics/Bitmap;)V

    .line 91
    iget-object p0, p0, Lcom/miui/home/recents/views/FloatingTaskView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static isFloatingTaskViewOnRight()Z
    .locals 2

    .line 153
    sget-object v0, Lcom/miui/home/recents/views/FloatingTaskView;->sStartingPosition:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static updateFloatingTaskViewRectF(I)Landroid/graphics/RectF;
    .locals 4

    .line 135
    sput p0, Lcom/miui/home/recents/views/FloatingTaskView;->sSecondTaskStagePosition:I

    .line 136
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPadDevice()Z

    move-result v0

    const v1, 0x3e4ccccd    # 0.2f

    const/4 v2, 0x0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreenMode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 143
    :cond_0
    new-instance p0, Landroid/graphics/RectF;

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenShortSize()I

    move-result v0

    int-to-float v0, v0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenLongSize()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v1

    invoke-direct {p0, v2, v2, v0, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    sput-object p0, Lcom/miui/home/recents/views/FloatingTaskView;->sStartingPosition:Landroid/graphics/RectF;

    goto :goto_1

    :cond_1
    :goto_0
    if-nez p0, :cond_2

    .line 138
    new-instance p0, Landroid/graphics/RectF;

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v1

    sub-float/2addr v0, v3

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-direct {p0, v0, v2, v1, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    sput-object p0, Lcom/miui/home/recents/views/FloatingTaskView;->sStartingPosition:Landroid/graphics/RectF;

    goto :goto_1

    .line 140
    :cond_2
    new-instance p0, Landroid/graphics/RectF;

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {p0, v2, v2, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    sput-object p0, Lcom/miui/home/recents/views/FloatingTaskView;->sStartingPosition:Landroid/graphics/RectF;

    .line 145
    :goto_1
    sget-object p0, Lcom/miui/home/recents/views/FloatingTaskView;->sStartingPosition:Landroid/graphics/RectF;

    return-object p0
.end method


# virtual methods
.method drawRoundedRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 9

    .line 189
    iget-object v0, p0, Lcom/miui/home/recents/views/FloatingTaskView;->mFullscreenParams:Lcom/miui/home/recents/views/FloatingTaskView$FullscreenDrawParams;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 193
    invoke-virtual {p0}, Lcom/miui/home/recents/views/FloatingTaskView;->getMeasuredWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Lcom/miui/home/recents/views/FloatingTaskView;->getMeasuredHeight()I

    move-result v0

    int-to-float v5, v0

    iget-object v0, p0, Lcom/miui/home/recents/views/FloatingTaskView;->mFullscreenParams:Lcom/miui/home/recents/views/FloatingTaskView$FullscreenDrawParams;

    iget v0, v0, Lcom/miui/home/recents/views/FloatingTaskView$FullscreenDrawParams;->mCurrentDrawnCornerRadius:F

    iget-object v1, p0, Lcom/miui/home/recents/views/FloatingTaskView;->mFullscreenParams:Lcom/miui/home/recents/views/FloatingTaskView$FullscreenDrawParams;

    iget v1, v1, Lcom/miui/home/recents/views/FloatingTaskView$FullscreenDrawParams;->mScaleX:F

    div-float v6, v0, v1

    iget-object v0, p0, Lcom/miui/home/recents/views/FloatingTaskView;->mFullscreenParams:Lcom/miui/home/recents/views/FloatingTaskView$FullscreenDrawParams;

    iget v0, v0, Lcom/miui/home/recents/views/FloatingTaskView$FullscreenDrawParams;->mCurrentDrawnCornerRadius:F

    iget-object p0, p0, Lcom/miui/home/recents/views/FloatingTaskView;->mFullscreenParams:Lcom/miui/home/recents/views/FloatingTaskView$FullscreenDrawParams;

    iget p0, p0, Lcom/miui/home/recents/views/FloatingTaskView$FullscreenDrawParams;->mScaleY:F

    div-float v7, v0, p0

    move-object v1, p1

    move-object v8, p2

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected initPosition(Landroid/graphics/RectF;Lcom/miui/home/launcher/InsettableFrameLayout$LayoutParams;)V
    .locals 2

    .line 175
    sget-object v0, Lcom/miui/home/recents/views/FloatingTaskView;->sStartingPosition:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 176
    iget v0, p1, Landroid/graphics/RectF;->top:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p2, Lcom/miui/home/launcher/InsettableFrameLayout$LayoutParams;->topMargin:I

    .line 177
    iget-boolean v0, p0, Lcom/miui/home/recents/views/FloatingTaskView;->mIsRtl:Z

    if-eqz v0, :cond_0

    .line 178
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceWidth()I

    move-result v0

    int-to-float v0, v0

    iget p1, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/miui/home/launcher/InsettableFrameLayout$LayoutParams;->setMarginStart(I)V

    goto :goto_0

    .line 180
    :cond_0
    iget p1, p1, Landroid/graphics/RectF;->left:F

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/miui/home/launcher/InsettableFrameLayout$LayoutParams;->setMarginStart(I)V

    :goto_0
    const/16 p1, 0x32

    const/16 p2, 0xa

    const/16 v0, 0x53c

    const/16 v1, 0x1f4

    .line 185
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/miui/home/recents/views/FloatingTaskView;->layout(IIII)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 123
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 124
    iget-object v0, p0, Lcom/miui/home/recents/views/FloatingTaskView;->mConfig:Landroid/content/res/Configuration;

    invoke-virtual {p1, v0}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v0

    and-int/lit16 v1, v0, 0x480

    if-eqz v1, :cond_0

    .line 126
    sget v1, Lcom/miui/home/recents/views/FloatingTaskView;->sSecondTaskStagePosition:I

    invoke-virtual {p0, v1}, Lcom/miui/home/recents/views/FloatingTaskView;->updateInitialPositionForView(I)V

    :cond_0
    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_1

    .line 129
    invoke-virtual {p0}, Lcom/miui/home/recents/views/FloatingTaskView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0801ab

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/FloatingTaskView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 131
    :cond_1
    iget-object p0, p0, Lcom/miui/home/recents/views/FloatingTaskView;->mConfig:Landroid/content/res/Configuration;

    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 76
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f0a038a

    .line 77
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/FloatingTaskView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/views/FloatingTaskThumbnailView;

    iput-object v0, p0, Lcom/miui/home/recents/views/FloatingTaskView;->mThumbnailView:Lcom/miui/home/recents/views/FloatingTaskThumbnailView;

    const v0, 0x7f0a01b1

    .line 78
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/FloatingTaskView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/home/recents/views/FloatingTaskView;->mIcon:Landroid/widget/ImageView;

    return-void
.end method

.method public removeView()V
    .locals 2

    .line 200
    sget-object v0, Lcom/miui/home/recents/views/FloatingTaskView;->sStartingPosition:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->setEmpty()V

    .line 202
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/recents/views/FloatingTaskView;->mActivity:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRootView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "FloatingTaskView"

    const-string v1, "remove floatingTaskView error."

    .line 204
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public updateInitialPositionForView(I)V
    .locals 3

    .line 113
    invoke-static {p1}, Lcom/miui/home/recents/views/FloatingTaskView;->updateFloatingTaskViewRectF(I)Landroid/graphics/RectF;

    move-result-object p1

    sput-object p1, Lcom/miui/home/recents/views/FloatingTaskView;->sStartingPosition:Landroid/graphics/RectF;

    .line 114
    new-instance p1, Lcom/miui/home/launcher/InsettableFrameLayout$LayoutParams;

    sget-object v0, Lcom/miui/home/recents/views/FloatingTaskView;->sStartingPosition:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    sget-object v1, Lcom/miui/home/recents/views/FloatingTaskView;->sStartingPosition:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    sget-object v1, Lcom/miui/home/recents/views/FloatingTaskView;->sStartingPosition:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sget-object v2, Lcom/miui/home/recents/views/FloatingTaskView;->sStartingPosition:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    invoke-direct {p1, v0, v1}, Lcom/miui/home/launcher/InsettableFrameLayout$LayoutParams;-><init>(II)V

    .line 117
    sget-object v0, Lcom/miui/home/recents/views/FloatingTaskView;->sStartingPosition:Landroid/graphics/RectF;

    invoke-virtual {p0, v0, p1}, Lcom/miui/home/recents/views/FloatingTaskView;->initPosition(Landroid/graphics/RectF;Lcom/miui/home/launcher/InsettableFrameLayout$LayoutParams;)V

    .line 118
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/FloatingTaskView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
