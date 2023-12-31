.class public Lcom/miui/blur/sdk/backdrop/BackdropBlurRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "BackdropBlurRelativeLayout.java"

# interfaces
.implements Lcom/miui/blur/sdk/backdrop/ViewBlurDrawInfo;


# instance fields
.field private createBackgroundBlurDrawable:Ljava/lang/reflect/Method;

.field private final mBlendPaint:Landroid/graphics/Paint;

.field private mBlurBackground:Ljava/lang/Object;

.field private final mBlurLayerHolder:Lcom/miui/blur/sdk/backdrop/BlurLayerHolderForGoogle;

.field private mBlurRadius:I

.field private final mBlurViewBinder:Lcom/miui/blur/sdk/backdrop/BackdropBlurViewBinder;

.field private mCornerRadiusBL:F

.field private mCornerRadiusBR:F

.field private mCornerRadiusTL:F

.field private mCornerRadiusTR:F

.field private setAlpha:Ljava/lang/reflect/Method;

.field private setBlurRadius:Ljava/lang/reflect/Method;

.field private setCornerRadius:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, v0}, Lcom/miui/blur/sdk/backdrop/BackdropBlurRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/blur/sdk/backdrop/BackdropBlurRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/miui/blur/sdk/backdrop/BackdropBlurRelativeLayout;->mBlendPaint:Landroid/graphics/Paint;

    .line 47
    new-instance p1, Lcom/miui/blur/sdk/backdrop/BackdropBlurViewBinder;

    invoke-direct {p1, p0, p0}, Lcom/miui/blur/sdk/backdrop/BackdropBlurViewBinder;-><init>(Landroid/view/View;Lcom/miui/blur/sdk/backdrop/BlurDrawInfo;)V

    iput-object p1, p0, Lcom/miui/blur/sdk/backdrop/BackdropBlurRelativeLayout;->mBlurViewBinder:Lcom/miui/blur/sdk/backdrop/BackdropBlurViewBinder;

    const/4 p1, 0x0

    .line 48
    invoke-virtual {p0, p1}, Lcom/miui/blur/sdk/backdrop/BackdropBlurRelativeLayout;->setWillNotDraw(Z)V

    .line 49
    iget-object p2, p0, Lcom/miui/blur/sdk/backdrop/BackdropBlurRelativeLayout;->mBlendPaint:Landroid/graphics/Paint;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 50
    new-instance p2, Lcom/miui/blur/sdk/backdrop/BlurLayerHolderForGoogle;

    invoke-direct {p2}, Lcom/miui/blur/sdk/backdrop/BlurLayerHolderForGoogle;-><init>()V

    iput-object p2, p0, Lcom/miui/blur/sdk/backdrop/BackdropBlurRelativeLayout;->mBlurLayerHolder:Lcom/miui/blur/sdk/backdrop/BlurLayerHolderForGoogle;

    .line 51
    invoke-virtual {p0}, Lcom/miui/blur/sdk/backdrop/BackdropBlurRelativeLayout;->isGoogleBlurSupported()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 52
    const-class p2, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

    new-array v0, p3, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, p1

    const-string v1, "setBlurRadius"

    invoke-static {p2, v1, v0}, Lcom/miui/blur/sdk/backdrop/ReflectUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/blur/sdk/backdrop/BackdropBlurRelativeLayout;->setBlurRadius:Ljava/lang/reflect/Method;

    .line 54
    const-class p2, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, p1

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, p3

    const/4 v1, 0x2

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const-string v1, "setCornerRadius"

    invoke-static {p2, v1, v0}, Lcom/miui/blur/sdk/backdrop/ReflectUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/blur/sdk/backdrop/BackdropBlurRelativeLayout;->setCornerRadius:Ljava/lang/reflect/Method;

    .line 56
    const-class p2, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

    new-array p3, p3, [Ljava/lang/Class;

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v0, p3, p1

    const-string v0, "setAlpha"

    invoke-static {p2, v0, p3}, Lcom/miui/blur/sdk/backdrop/ReflectUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/blur/sdk/backdrop/BackdropBlurRelativeLayout;->setAlpha:Ljava/lang/reflect/Method;

    .line 58
    const-class p2, Landroid/view/ViewRootImpl;

    new-array p1, p1, [Ljava/lang/Class;

    const-string p3, "createBackgroundBlurDrawable"

    invoke-static {p2, p3, p1}, Lcom/miui/blur/sdk/backdrop/ReflectUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/blur/sdk/backdrop/BackdropBlurRelativeLayout;->createBackgroundBlurDrawable:Ljava/lang/reflect/Method;

    :cond_0
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/BackdropBlurRelativeLayout;->mBlurViewBinder:Lcom/miui/blur/sdk/backdrop/BackdropBlurViewBinder;

    invoke-virtual {v0, p1}, Lcom/miui/blur/sdk/backdrop/BackdropBlurViewBinder;->onDraw(Landroid/graphics/Canvas;)V

    .line 67
    invoke-virtual {p0}, Lcom/miui/blur/sdk/backdrop/BackdropBlurRelativeLayout;->isGoogleBlurSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->draw(Landroid/graphics/Canvas;)V

    .line 70
    :cond_1
    invoke-virtual {p0}, Lcom/miui/blur/sdk/backdrop/BackdropBlurRelativeLayout;->isGoogleBlurSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 71
    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/BackdropBlurRelativeLayout;->mBlurLayerHolder:Lcom/miui/blur/sdk/backdrop/BlurLayerHolderForGoogle;

    iget v1, p0, Lcom/miui/blur/sdk/backdrop/BackdropBlurRelativeLayout;->mCornerRadiusTL:F

    invoke-virtual {v0, p1, p0, v1}, Lcom/miui/blur/sdk/backdrop/BlurLayerHolderForGoogle;->draw(Landroid/graphics/Canvas;Lcom/miui/blur/sdk/backdrop/BlurDrawInfo;F)V

    :cond_2
    return-void
.end method

.method public getParentAlpha()F
    .locals 2

    .line 88
    invoke-virtual {p0}, Lcom/miui/blur/sdk/backdrop/BackdropBlurRelativeLayout;->getAlpha()F

    move-result v0

    .line 89
    invoke-virtual {p0}, Lcom/miui/blur/sdk/backdrop/BackdropBlurRelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    .line 90
    :goto_0
    instance-of v1, p0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 91
    move-object v1, p0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v1

    mul-float/2addr v0, v1

    .line 92
    invoke-interface {p0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    goto :goto_0

    :cond_0
    return v0
.end method

.method public isBackdropBlurSupported()Z
    .locals 0

    .line 205
    iget-object p0, p0, Lcom/miui/blur/sdk/backdrop/BackdropBlurRelativeLayout;->mBlurViewBinder:Lcom/miui/blur/sdk/backdrop/BackdropBlurViewBinder;

    invoke-virtual {p0}, Lcom/miui/blur/sdk/backdrop/BackdropBlurViewBinder;->isBackdropBlurSupported()Z

    move-result p0

    return p0
.end method

.method public isBlurEnabledAndSupported()Z
    .locals 0

    .line 209
    iget-object p0, p0, Lcom/miui/blur/sdk/backdrop/BackdropBlurRelativeLayout;->mBlurViewBinder:Lcom/miui/blur/sdk/backdrop/BackdropBlurViewBinder;

    invoke-virtual {p0}, Lcom/miui/blur/sdk/backdrop/BackdropBlurViewBinder;->isBlurEnabledAndSupported()Z

    move-result p0

    return p0
.end method

.method public isGoogleBlurSupported()Z
    .locals 0

    .line 213
    sget-boolean p0, Lcom/miui/blur/sdk/backdrop/BlurManager;->GOOGLE_BACKGROUND_BLUR_SUPPORTED:Z

    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 7

    .line 106
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 107
    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/BackdropBlurRelativeLayout;->mBlurViewBinder:Lcom/miui/blur/sdk/backdrop/BackdropBlurViewBinder;

    invoke-virtual {v0}, Lcom/miui/blur/sdk/backdrop/BackdropBlurViewBinder;->onAttachedToWindow()V

    .line 108
    invoke-virtual {p0}, Lcom/miui/blur/sdk/backdrop/BackdropBlurRelativeLayout;->isGoogleBlurSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 110
    invoke-virtual {p0}, Lcom/miui/blur/sdk/backdrop/BackdropBlurRelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/blur/sdk/backdrop/BackdropBlurRelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

    if-nez v0, :cond_0

    return-void

    .line 113
    :cond_0
    invoke-virtual {p0}, Lcom/miui/blur/sdk/backdrop/BackdropBlurRelativeLayout;->getBlurViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/blur/sdk/backdrop/BackdropBlurRelativeLayout;->createBackgroundBlurDrawable:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/miui/blur/sdk/backdrop/ReflectUtils;->invokeMethod(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/blur/sdk/backdrop/BackdropBlurRelativeLayout;->mBlurBackground:Ljava/lang/Object;

    .line 114
    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/BackdropBlurRelativeLayout;->mBlurBackground:Ljava/lang/Object;

    instance-of v1, v0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

    if-eqz v1, :cond_2

    .line 115
    iget-object v1, p0, Lcom/miui/blur/sdk/backdrop/BackdropBlurRelativeLayout;->setBlurRadius:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    iget v5, p0, Lcom/miui/blur/sdk/backdrop/BackdropBlurRelativeLayout;->mBlurRadius:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v1, v4}, Lcom/miui/blur/sdk/backdrop/ReflectUtils;->invokeMethod(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/BackdropBlurRelativeLayout;->mBlurBackground:Ljava/lang/Object;

    iget-object v1, p0, Lcom/miui/blur/sdk/backdrop/BackdropBlurRelativeLayout;->setCornerRadius:Ljava/lang/reflect/Method;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p0, Lcom/miui/blur/sdk/backdrop/BackdropBlurRelativeLayout;->mCornerRadiusTL:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v2

    iget v5, p0, Lcom/miui/blur/sdk/backdrop/BackdropBlurRelativeLayout;->mCornerRadiusTR:F

    .line 117
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v3

    const/4 v5, 0x2

    iget v6, p0, Lcom/miui/blur/sdk/backdrop/BackdropBlurRelativeLayout;->mCornerRadiusBL:F

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    iget v6, p0, Lcom/miui/blur/sdk/backdrop/BackdropBlurRelativeLayout;->mCornerRadiusBR:F

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    .line 116
    invoke-static {v0, v1, v4}, Lcom/miui/blur/sdk/backdrop/ReflectUtils;->invokeMethod(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    invoke-virtual {p0}, Lcom/miui/blur/sdk/backdrop/BackdropBlurRelativeLayout;->getParentAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 119
    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/BackdropBlurRelativeLayout;->mBlurBackground:Ljava/lang/Object;

    iget-object v1, p0, Lcom/miui/blur/sdk/backdrop/BackdropBlurRelativeLayout;->setAlpha:Ljava/lang/reflect/Method;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v0, v1, v3}, Lcom/miui/blur/sdk/backdrop/ReflectUtils;->invokeMethod(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/BackdropBlurRelativeLayout;->mBlurBackground:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/miui/blur/sdk/backdrop/BackdropBlurRelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 128
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 129
    iget-object p0, p0, Lcom/miui/blur/sdk/backdrop/BackdropBlurRelativeLayout;->mBlurViewBinder:Lcom/miui/blur/sdk/backdrop/BackdropBlurViewBinder;

    invoke-virtual {p0}, Lcom/miui/blur/sdk/backdrop/BackdropBlurViewBinder;->onDetachedFromWindow()V

    return-void
.end method

.method public onVisibilityAggregated(Z)V
    .locals 1

    .line 99
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onVisibilityAggregated(Z)V

    .line 100
    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/BackdropBlurRelativeLayout;->mBlurViewBinder:Lcom/miui/blur/sdk/backdrop/BackdropBlurViewBinder;

    invoke-virtual {v0, p1}, Lcom/miui/blur/sdk/backdrop/BackdropBlurViewBinder;->onVisibilityAggregated(Z)V

    .line 101
    invoke-virtual {p0}, Lcom/miui/blur/sdk/backdrop/BackdropBlurRelativeLayout;->postInvalidateOnAnimation()V

    return-void
.end method

.method public setBlurEnabled(Z)V
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/BackdropBlurRelativeLayout;->mBlurViewBinder:Lcom/miui/blur/sdk/backdrop/BackdropBlurViewBinder;

    invoke-virtual {v0, p1}, Lcom/miui/blur/sdk/backdrop/BackdropBlurViewBinder;->setBlurEnabled(Z)V

    .line 134
    invoke-virtual {p0}, Lcom/miui/blur/sdk/backdrop/BackdropBlurRelativeLayout;->isGoogleBlurSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 135
    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/BackdropBlurRelativeLayout;->mBlurLayerHolder:Lcom/miui/blur/sdk/backdrop/BlurLayerHolderForGoogle;

    invoke-virtual {v0, p1}, Lcom/miui/blur/sdk/backdrop/BlurLayerHolderForGoogle;->setEnable(Z)V

    if-eqz p1, :cond_0

    .line 137
    iget-object p1, p0, Lcom/miui/blur/sdk/backdrop/BackdropBlurRelativeLayout;->mBlurBackground:Ljava/lang/Object;

    instance-of p1, p1, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

    if-eqz p1, :cond_1

    .line 138
    iget p1, p0, Lcom/miui/blur/sdk/backdrop/BackdropBlurRelativeLayout;->mBlurRadius:I

    invoke-virtual {p0, p1}, Lcom/miui/blur/sdk/backdrop/BackdropBlurRelativeLayout;->setBlurRadius(I)V

    .line 139
    iget-object p1, p0, Lcom/miui/blur/sdk/backdrop/BackdropBlurRelativeLayout;->mBlurBackground:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/miui/blur/sdk/backdrop/BackdropBlurRelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 143
    :cond_0
    invoke-virtual {p0}, Lcom/miui/blur/sdk/backdrop/BackdropBlurRelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    instance-of p1, p1, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 144
    invoke-virtual {p0, p1}, Lcom/miui/blur/sdk/backdrop/BackdropBlurRelativeLayout;->setBlurRadius(I)V

    const/4 p1, 0x0

    .line 145
    invoke-virtual {p0, p1}, Lcom/miui/blur/sdk/backdrop/BackdropBlurRelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 149
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/miui/blur/sdk/backdrop/BackdropBlurRelativeLayout;->postInvalidateOnAnimation()V

    return-void
.end method

.method public setBlurRadius(I)V
    .locals 3

    .line 162
    iget v0, p0, Lcom/miui/blur/sdk/backdrop/BackdropBlurRelativeLayout;->mBlurRadius:I

    if-eq v0, p1, :cond_0

    .line 163
    iput p1, p0, Lcom/miui/blur/sdk/backdrop/BackdropBlurRelativeLayout;->mBlurRadius:I

    .line 164
    invoke-virtual {p0}, Lcom/miui/blur/sdk/backdrop/BackdropBlurRelativeLayout;->isGoogleBlurSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/BackdropBlurRelativeLayout;->mBlurBackground:Ljava/lang/Object;

    instance-of v1, v0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

    if-eqz v1, :cond_0

    .line 166
    iget-object p0, p0, Lcom/miui/blur/sdk/backdrop/BackdropBlurRelativeLayout;->setBlurRadius:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-static {v0, p0, v1}, Lcom/miui/blur/sdk/backdrop/ReflectUtils;->invokeMethod(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public setCornerRadius(F)V
    .locals 0

    .line 176
    invoke-virtual {p0, p1, p1, p1, p1}, Lcom/miui/blur/sdk/backdrop/BackdropBlurRelativeLayout;->setCornerRadius(FFFF)V

    return-void
.end method

.method public setCornerRadius(FFFF)V
    .locals 3

    .line 188
    iget v0, p0, Lcom/miui/blur/sdk/backdrop/BackdropBlurRelativeLayout;->mCornerRadiusTL:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/miui/blur/sdk/backdrop/BackdropBlurRelativeLayout;->mCornerRadiusTR:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_0

    iget v0, p0, Lcom/miui/blur/sdk/backdrop/BackdropBlurRelativeLayout;->mCornerRadiusBL:F

    cmpl-float v0, v0, p3

    if-nez v0, :cond_0

    iget v0, p0, Lcom/miui/blur/sdk/backdrop/BackdropBlurRelativeLayout;->mCornerRadiusBR:F

    cmpl-float v0, v0, p4

    if-eqz v0, :cond_1

    .line 192
    :cond_0
    iput p1, p0, Lcom/miui/blur/sdk/backdrop/BackdropBlurRelativeLayout;->mCornerRadiusTL:F

    .line 193
    iput p2, p0, Lcom/miui/blur/sdk/backdrop/BackdropBlurRelativeLayout;->mCornerRadiusTR:F

    .line 194
    iput p3, p0, Lcom/miui/blur/sdk/backdrop/BackdropBlurRelativeLayout;->mCornerRadiusBL:F

    .line 195
    iput p4, p0, Lcom/miui/blur/sdk/backdrop/BackdropBlurRelativeLayout;->mCornerRadiusBR:F

    .line 196
    invoke-virtual {p0}, Lcom/miui/blur/sdk/backdrop/BackdropBlurRelativeLayout;->isGoogleBlurSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 197
    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/BackdropBlurRelativeLayout;->mBlurBackground:Ljava/lang/Object;

    instance-of v1, v0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

    if-eqz v1, :cond_1

    .line 198
    iget-object p0, p0, Lcom/miui/blur/sdk/backdrop/BackdropBlurRelativeLayout;->setCornerRadius:Ljava/lang/reflect/Method;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v1, v2

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    aput-object p2, v1, p1

    const/4 p1, 0x2

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    aput-object p2, v1, p1

    const/4 p1, 0x3

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    aput-object p2, v1, p1

    invoke-static {v0, p0, v1}, Lcom/miui/blur/sdk/backdrop/ReflectUtils;->invokeMethod(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method
