.class public interface abstract Lcom/miui/home/launcher/anim/WidgetTypeAnimTarget;
.super Ljava/lang/Object;
.source "WidgetTypeAnimTarget.java"

# interfaces
.implements Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;


# virtual methods
.method public fillRoundCornerColor(Landroid/graphics/Bitmap;)V
    .locals 16

    move-object/from16 v6, p1

    .line 105
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_6

    .line 106
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 107
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    add-int/lit8 v9, v7, -0x1

    add-int/lit8 v10, v8, -0x1

    const/4 v11, 0x0

    .line 113
    invoke-virtual {v6, v11, v11}, Landroid/graphics/Bitmap;->getColor(II)Landroid/graphics/Color;

    move-result-object v0

    .line 114
    invoke-interface/range {p0 .. p0}, Lcom/miui/home/launcher/anim/WidgetTypeAnimTarget;->getIconRadius()F

    move-result v1

    const/high16 v2, 0x41200000    # 10.0f

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 115
    invoke-virtual {v0}, Landroid/graphics/Color;->alpha()F

    move-result v0

    const/4 v12, 0x0

    cmpl-float v0, v0, v12

    if-nez v0, :cond_6

    const/4 v0, 0x1

    .line 117
    :goto_0
    invoke-virtual {v6, v0, v0}, Landroid/graphics/Bitmap;->getColor(II)Landroid/graphics/Color;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Color;->alpha()F

    move-result v2

    cmpl-float v2, v2, v12

    if-nez v2, :cond_0

    if-gt v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-ge v0, v1, :cond_1

    add-int/lit8 v0, v0, 0x3

    move v13, v0

    goto :goto_1

    :cond_1
    move v13, v0

    :goto_1
    move v14, v13

    .line 126
    :goto_2
    invoke-virtual {v6, v13, v11}, Landroid/graphics/Bitmap;->getColor(II)Landroid/graphics/Color;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Color;->alpha()F

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_2

    if-gt v14, v1, :cond_2

    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 131
    :cond_2
    invoke-virtual {v6, v14, v11}, Landroid/graphics/Bitmap;->getColor(II)Landroid/graphics/Color;

    move-result-object v0

    .line 132
    invoke-virtual {v0}, Landroid/graphics/Color;->alpha()F

    move-result v1

    cmpl-float v1, v1, v12

    if-eqz v1, :cond_3

    .line 133
    invoke-virtual {v0}, Landroid/graphics/Color;->toArgb()I

    move-result v15

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p1

    move v1, v15

    move v3, v14

    move v5, v13

    .line 134
    invoke-static/range {v0 .. v5}, Lcom/miui/home/launcher/anim/util/WidgetTypeFloatingIconAnimHelper;->fillUpBitmapCornerAlphaPixel(Landroid/graphics/Bitmap;IIIII)V

    move v3, v13

    move v5, v14

    .line 140
    invoke-static/range {v0 .. v5}, Lcom/miui/home/launcher/anim/util/WidgetTypeFloatingIconAnimHelper;->fillUpBitmapCornerAlphaPixel(Landroid/graphics/Bitmap;IIIII)V

    :cond_3
    sub-int v15, v9, v14

    .line 148
    invoke-virtual {v6, v15, v11}, Landroid/graphics/Bitmap;->getColor(II)Landroid/graphics/Color;

    move-result-object v0

    .line 149
    invoke-virtual {v0}, Landroid/graphics/Color;->alpha()F

    move-result v1

    cmpl-float v1, v1, v12

    if-eqz v1, :cond_4

    .line 150
    invoke-virtual {v0}, Landroid/graphics/Color;->toArgb()I

    move-result v11

    const/4 v4, 0x0

    move-object/from16 v0, p1

    move v1, v11

    move v2, v15

    move v3, v7

    move v5, v13

    .line 151
    invoke-static/range {v0 .. v5}, Lcom/miui/home/launcher/anim/util/WidgetTypeFloatingIconAnimHelper;->fillUpBitmapCornerAlphaPixel(Landroid/graphics/Bitmap;IIIII)V

    sub-int v2, v9, v13

    move v5, v14

    .line 157
    invoke-static/range {v0 .. v5}, Lcom/miui/home/launcher/anim/util/WidgetTypeFloatingIconAnimHelper;->fillUpBitmapCornerAlphaPixel(Landroid/graphics/Bitmap;IIIII)V

    .line 165
    :cond_4
    invoke-virtual {v6, v14, v10}, Landroid/graphics/Bitmap;->getColor(II)Landroid/graphics/Color;

    move-result-object v0

    .line 166
    invoke-virtual {v0}, Landroid/graphics/Color;->alpha()F

    move-result v1

    cmpl-float v1, v1, v12

    if-eqz v1, :cond_5

    .line 167
    invoke-virtual {v0}, Landroid/graphics/Color;->toArgb()I

    move-result v11

    const/4 v2, 0x0

    sub-int v4, v10, v14

    move-object/from16 v0, p1

    move v1, v11

    move v3, v13

    move v5, v8

    .line 168
    invoke-static/range {v0 .. v5}, Lcom/miui/home/launcher/anim/util/WidgetTypeFloatingIconAnimHelper;->fillUpBitmapCornerAlphaPixel(Landroid/graphics/Bitmap;IIIII)V

    sub-int v4, v10, v13

    move v3, v14

    .line 174
    invoke-static/range {v0 .. v5}, Lcom/miui/home/launcher/anim/util/WidgetTypeFloatingIconAnimHelper;->fillUpBitmapCornerAlphaPixel(Landroid/graphics/Bitmap;IIIII)V

    .line 182
    :cond_5
    invoke-virtual {v6, v15, v10}, Landroid/graphics/Bitmap;->getColor(II)Landroid/graphics/Color;

    move-result-object v0

    .line 183
    invoke-virtual {v0}, Landroid/graphics/Color;->alpha()F

    move-result v1

    cmpl-float v1, v1, v12

    if-eqz v1, :cond_6

    .line 184
    invoke-virtual {v0}, Landroid/graphics/Color;->toArgb()I

    move-result v11

    sub-int v2, v9, v13

    sub-int v4, v10, v14

    move-object/from16 v0, p1

    move v1, v11

    move v3, v7

    move v5, v8

    .line 185
    invoke-static/range {v0 .. v5}, Lcom/miui/home/launcher/anim/util/WidgetTypeFloatingIconAnimHelper;->fillUpBitmapCornerAlphaPixel(Landroid/graphics/Bitmap;IIIII)V

    sub-int v4, v10, v13

    move v2, v15

    .line 191
    invoke-static/range {v0 .. v5}, Lcom/miui/home/launcher/anim/util/WidgetTypeFloatingIconAnimHelper;->fillUpBitmapCornerAlphaPixel(Landroid/graphics/Bitmap;IIIII)V

    :cond_6
    return-void
.end method

.method public getBindAppPackage()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getContentDrawable()Landroid/graphics/drawable/Drawable;
    .locals 5

    const/4 v0, 0x0

    .line 85
    :try_start_0
    invoke-interface {p0}, Lcom/miui/home/launcher/anim/WidgetTypeAnimTarget;->getIconImageView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 86
    invoke-interface {p0}, Lcom/miui/home/launcher/anim/WidgetTypeAnimTarget;->getIconImageView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 87
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 88
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 89
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-interface {p0}, Lcom/miui/home/launcher/anim/WidgetTypeAnimTarget;->getIconImageView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v0, 0x0

    .line 90
    :try_start_1
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v0, v4}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 91
    invoke-interface {p0}, Lcom/miui/home/launcher/anim/WidgetTypeAnimTarget;->getIconImageView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 92
    invoke-interface {p0, v1}, Lcom/miui/home/launcher/anim/WidgetTypeAnimTarget;->fillRoundCornerColor(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v1, v0

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v3, v0

    :goto_0
    const-string v0, "WidgetTypeAnimTarget"

    .line 94
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get widget content drawable fail : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-object v3
.end method

.method public getIconImageViewOriginalLocation()Landroid/graphics/Rect;
    .locals 7

    const/4 v0, 0x2

    .line 53
    new-array v0, v0, [F

    .line 54
    invoke-interface {p0}, Lcom/miui/home/launcher/anim/WidgetTypeAnimTarget;->getIconImageView()Landroid/view/View;

    move-result-object v1

    invoke-interface {p0}, Lcom/miui/home/launcher/anim/WidgetTypeAnimTarget;->getTargetRootView()Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3, v3}, Lcom/miui/home/launcher/common/Utilities;->getDescendantCoordRelativeToAncestor(Landroid/view/View;Landroid/view/View;[FZZ)F

    .line 55
    new-instance v1, Landroid/graphics/Rect;

    aget v2, v0, v3

    float-to-int v2, v2

    const/4 v4, 0x1

    aget v5, v0, v4

    float-to-int v5, v5

    aget v3, v0, v3

    .line 57
    invoke-interface {p0}, Lcom/miui/home/launcher/anim/WidgetTypeAnimTarget;->getIconImageView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v3, v6

    float-to-int v3, v3

    aget v0, v0, v4

    .line 58
    invoke-interface {p0}, Lcom/miui/home/launcher/anim/WidgetTypeAnimTarget;->getIconImageView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v0, v4

    float-to-int v0, v0

    invoke-direct {v1, v2, v5, v3, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1
.end method

.method public getTargetRootView()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isUseTransitionAnimation()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public needChangeIconAlpha()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onEnterHomeAnimFinish()V
    .locals 2

    .line 36
    invoke-interface {p0}, Lcom/miui/home/launcher/anim/WidgetTypeAnimTarget;->getIconImageView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 37
    invoke-interface {p0}, Lcom/miui/home/launcher/anim/WidgetTypeAnimTarget;->getIconImageView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 39
    :cond_0
    invoke-interface {p0}, Lcom/miui/home/launcher/anim/WidgetTypeAnimTarget;->getIconImageView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onLaunchAppAnimStart()V
    .locals 0

    return-void
.end method
