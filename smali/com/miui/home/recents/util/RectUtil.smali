.class public Lcom/miui/home/recents/util/RectUtil;
.super Ljava/lang/Object;
.source "RectUtil.java"


# direct methods
.method public static generateLeastWrapBoundWithRatio(Landroid/graphics/RectF;Landroid/graphics/RectF;F)Landroid/graphics/RectF;
    .locals 5

    .line 8
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3

    .line 9
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3

    .line 10
    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3

    .line 11
    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 15
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v0, v1

    .line 16
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    div-float/2addr v1, p1

    sub-float p1, v0, v1

    .line 18
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    div-float/2addr p1, v0

    cmpl-float p1, p1, p2

    if-lez p1, :cond_1

    .line 19
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1, p0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    return-object p1

    .line 22
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result p1

    div-float/2addr p1, v1

    .line 23
    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result p2

    mul-float/2addr v1, p2

    .line 25
    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result p2

    cmpl-float p2, p1, p2

    const/high16 v0, 0x40000000    # 2.0f

    if-ltz p2, :cond_2

    .line 27
    new-instance p2, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    div-float/2addr p1, v0

    sub-float/2addr v1, p1

    .line 28
    invoke-virtual {p0}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float/2addr v3, v0

    sub-float/2addr v2, v3

    .line 29
    invoke-virtual {p0}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    add-float/2addr v3, p1

    .line 30
    invoke-virtual {p0}, Landroid/graphics/RectF;->centerY()F

    move-result p1

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result p0

    div-float/2addr p0, v0

    add-float/2addr p1, p0

    invoke-direct {p2, v1, v2, v3, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object p2

    .line 33
    :cond_2
    new-instance p1, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/RectF;->centerX()F

    move-result p2

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float/2addr v2, v0

    sub-float/2addr p2, v2

    .line 34
    invoke-virtual {p0}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    div-float/2addr v1, v0

    sub-float/2addr v2, v1

    .line 35
    invoke-virtual {p0}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v4

    div-float/2addr v4, v0

    add-float/2addr v3, v4

    .line 36
    invoke-virtual {p0}, Landroid/graphics/RectF;->centerY()F

    move-result p0

    add-float/2addr p0, v1

    invoke-direct {p1, p2, v2, v3, p0}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object p1

    .line 12
    :cond_3
    :goto_0
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1, p0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    return-object p1
.end method
