.class public interface abstract Lcom/miui/home/launcher/anim/WidgetTypeAnimTarget;
.super Ljava/lang/Object;
.source "WidgetTypeAnimTarget.java"

# interfaces
.implements Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;


# virtual methods
.method public fillRoundCornerColor(Landroid/graphics/Bitmap;)V
    .locals 17

    move-object/from16 v6, p1

    .line 71
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_7

    .line 72
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 73
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    add-int/lit8 v9, v7, -0x1

    add-int/lit8 v10, v8, -0x1

    const/4 v0, 0x0

    .line 79
    invoke-virtual {v6, v0, v0}, Landroid/graphics/Bitmap;->getColor(II)Landroid/graphics/Color;

    move-result-object v1

    .line 80
    invoke-virtual {v1}, Landroid/graphics/Color;->alpha()F

    move-result v1

    const/4 v11, 0x0

    cmpl-float v1, v1, v11

    if-nez v1, :cond_7

    const/4 v1, 0x1

    .line 82
    :goto_0
    invoke-virtual {v6, v1, v1}, Landroid/graphics/Bitmap;->getColor(II)Landroid/graphics/Color;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Color;->alpha()F

    move-result v2

    cmpl-float v2, v2, v11

    const/16 v3, 0x32

    if-nez v2, :cond_0

    if-gt v1, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-ge v1, v3, :cond_1

    add-int/lit8 v1, v1, 0x3

    move v12, v1

    goto :goto_1

    :cond_1
    move v12, v1

    :goto_1
    move v1, v12

    .line 91
    :goto_2
    invoke-virtual {v6, v12, v0}, Landroid/graphics/Bitmap;->getColor(II)Landroid/graphics/Color;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Color;->alpha()F

    move-result v2

    cmpl-float v2, v2, v11

    if-nez v2, :cond_2

    if-gt v1, v3, :cond_2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    if-ge v1, v3, :cond_3

    add-int/lit8 v1, v1, 0x5

    move v13, v1

    goto :goto_3

    :cond_3
    move v13, v1

    .line 99
    :goto_3
    invoke-virtual {v6, v12, v12}, Landroid/graphics/Bitmap;->getColor(II)Landroid/graphics/Color;

    move-result-object v0

    .line 100
    invoke-virtual {v0}, Landroid/graphics/Color;->alpha()F

    move-result v1

    cmpl-float v1, v1, v11

    if-eqz v1, :cond_4

    .line 101
    invoke-virtual {v0}, Landroid/graphics/Color;->toArgb()I

    move-result v14

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p1

    move v1, v14

    move v3, v13

    move v5, v12

    .line 102
    invoke-static/range {v0 .. v5}, Lcom/miui/home/launcher/anim/util/WidgetTypeFloatingIconAnimHelper;->fillUpBitmapCornerAlphaPixel(Landroid/graphics/Bitmap;IIIII)V

    move v3, v12

    move v5, v13

    .line 108
    invoke-static/range {v0 .. v5}, Lcom/miui/home/launcher/anim/util/WidgetTypeFloatingIconAnimHelper;->fillUpBitmapCornerAlphaPixel(Landroid/graphics/Bitmap;IIIII)V

    :cond_4
    sub-int v14, v9, v12

    .line 116
    invoke-virtual {v6, v14, v12}, Landroid/graphics/Bitmap;->getColor(II)Landroid/graphics/Color;

    move-result-object v0

    .line 117
    invoke-virtual {v0}, Landroid/graphics/Color;->alpha()F

    move-result v1

    cmpl-float v1, v1, v11

    if-eqz v1, :cond_5

    .line 118
    invoke-virtual {v0}, Landroid/graphics/Color;->toArgb()I

    move-result v15

    sub-int v2, v9, v13

    const/4 v4, 0x0

    move-object/from16 v0, p1

    move v1, v15

    move v3, v7

    move v5, v12

    .line 119
    invoke-static/range {v0 .. v5}, Lcom/miui/home/launcher/anim/util/WidgetTypeFloatingIconAnimHelper;->fillUpBitmapCornerAlphaPixel(Landroid/graphics/Bitmap;IIIII)V

    move v2, v14

    move v5, v13

    .line 125
    invoke-static/range {v0 .. v5}, Lcom/miui/home/launcher/anim/util/WidgetTypeFloatingIconAnimHelper;->fillUpBitmapCornerAlphaPixel(Landroid/graphics/Bitmap;IIIII)V

    :cond_5
    sub-int v15, v10, v12

    .line 133
    invoke-virtual {v6, v12, v15}, Landroid/graphics/Bitmap;->getColor(II)Landroid/graphics/Color;

    move-result-object v0

    .line 134
    invoke-virtual {v0}, Landroid/graphics/Color;->alpha()F

    move-result v1

    cmpl-float v1, v1, v11

    if-eqz v1, :cond_6

    .line 135
    invoke-virtual {v0}, Landroid/graphics/Color;->toArgb()I

    move-result v16

    const/4 v2, 0x0

    sub-int v4, v10, v13

    move-object/from16 v0, p1

    move/from16 v1, v16

    move v3, v12

    move v5, v8

    .line 136
    invoke-static/range {v0 .. v5}, Lcom/miui/home/launcher/anim/util/WidgetTypeFloatingIconAnimHelper;->fillUpBitmapCornerAlphaPixel(Landroid/graphics/Bitmap;IIIII)V

    move v3, v13

    move v4, v15

    .line 142
    invoke-static/range {v0 .. v5}, Lcom/miui/home/launcher/anim/util/WidgetTypeFloatingIconAnimHelper;->fillUpBitmapCornerAlphaPixel(Landroid/graphics/Bitmap;IIIII)V

    .line 150
    :cond_6
    invoke-virtual {v6, v14, v15}, Landroid/graphics/Bitmap;->getColor(II)Landroid/graphics/Color;

    move-result-object v0

    .line 151
    invoke-virtual {v0}, Landroid/graphics/Color;->alpha()F

    move-result v1

    cmpl-float v1, v1, v11

    if-eqz v1, :cond_7

    .line 152
    invoke-virtual {v0}, Landroid/graphics/Color;->toArgb()I

    move-result v11

    sub-int v4, v10, v13

    move-object/from16 v0, p1

    move v1, v11

    move v2, v14

    move v3, v7

    move v5, v8

    .line 153
    invoke-static/range {v0 .. v5}, Lcom/miui/home/launcher/anim/util/WidgetTypeFloatingIconAnimHelper;->fillUpBitmapCornerAlphaPixel(Landroid/graphics/Bitmap;IIIII)V

    sub-int v2, v9, v13

    move v4, v15

    .line 159
    invoke-static/range {v0 .. v5}, Lcom/miui/home/launcher/anim/util/WidgetTypeFloatingIconAnimHelper;->fillUpBitmapCornerAlphaPixel(Landroid/graphics/Bitmap;IIIII)V

    :cond_7
    return-void
.end method

.method public getBindAppPackage()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getIconImageViewOriginalLocation()Landroid/graphics/Rect;
    .locals 7

    const/4 v0, 0x2

    .line 47
    new-array v0, v0, [F

    .line 48
    invoke-interface {p0}, Lcom/miui/home/launcher/anim/WidgetTypeAnimTarget;->getIconImageView()Landroid/view/View;

    move-result-object v1

    invoke-interface {p0}, Lcom/miui/home/launcher/anim/WidgetTypeAnimTarget;->getTargetRootView()Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3, v3}, Lcom/miui/home/launcher/common/Utilities;->getDescendantCoordRelativeToAncestor(Landroid/view/View;Landroid/view/View;[FZZ)F

    .line 49
    new-instance v1, Landroid/graphics/Rect;

    aget v2, v0, v3

    float-to-int v2, v2

    const/4 v4, 0x1

    aget v5, v0, v4

    float-to-int v5, v5

    aget v3, v0, v3

    .line 51
    invoke-interface {p0}, Lcom/miui/home/launcher/anim/WidgetTypeAnimTarget;->getIconImageView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v3, v6

    float-to-int v3, v3

    aget v0, v0, v4

    .line 52
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

.method public onEnterHomeAnimFinish()V
    .locals 2

    .line 30
    invoke-interface {p0}, Lcom/miui/home/launcher/anim/WidgetTypeAnimTarget;->getIconImageView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 31
    invoke-interface {p0}, Lcom/miui/home/launcher/anim/WidgetTypeAnimTarget;->getIconImageView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 33
    :cond_0
    invoke-interface {p0}, Lcom/miui/home/launcher/anim/WidgetTypeAnimTarget;->getIconImageView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
