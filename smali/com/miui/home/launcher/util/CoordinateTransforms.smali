.class public Lcom/miui/home/launcher/util/CoordinateTransforms;
.super Ljava/lang/Object;
.source "CoordinateTransforms.java"


# direct methods
.method public static transformCoordinate(IILandroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 1

    .line 149
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 150
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    .line 151
    invoke-static {p0, p1, v0}, Lcom/miui/home/launcher/util/CoordinateTransforms;->transformCoordinate(IILandroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    return-object p2
.end method

.method public static transformCoordinate(IILandroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 4

    if-ne p0, p1, :cond_0

    return-object p2

    :cond_0
    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    .line 138
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getRealScreenHight()I

    move-result v1

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenWidth()I

    move-result v1

    :goto_1
    if-eqz v0, :cond_4

    .line 139
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenWidth()I

    move-result v0

    goto :goto_2

    :cond_4
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getRealScreenHight()I

    move-result v0

    .line 140
    :goto_2
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    .line 141
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 142
    invoke-static {p0, p1, v1, v0, v3}, Lcom/miui/home/launcher/util/CoordinateTransforms;->transformToRotation(IIIILandroid/graphics/Matrix;)V

    .line 144
    invoke-virtual {v3, v2, p2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    return-object v2
.end method

.method private static transformLogicalToPhysicalCoordinates(IIILandroid/graphics/Matrix;)V
    .locals 1

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    .line 90
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown rotation: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    const/high16 p0, 0x43870000    # 270.0f

    .line 86
    invoke-virtual {p3, p0}, Landroid/graphics/Matrix;->setRotate(F)V

    neg-int p0, p2

    int-to-float p0, p0

    .line 87
    invoke-virtual {p3, p0, v0}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    goto :goto_0

    :pswitch_1
    const/high16 p0, 0x43340000    # 180.0f

    .line 82
    invoke-virtual {p3, p0}, Landroid/graphics/Matrix;->setRotate(F)V

    neg-int p0, p1

    int-to-float p0, p0

    neg-int p1, p2

    int-to-float p1, p1

    .line 83
    invoke-virtual {p3, p0, p1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    goto :goto_0

    :pswitch_2
    const/high16 p0, 0x42b40000    # 90.0f

    .line 78
    invoke-virtual {p3, p0}, Landroid/graphics/Matrix;->setRotate(F)V

    neg-int p0, p1

    int-to-float p0, p0

    .line 79
    invoke-virtual {p3, v0, p0}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    goto :goto_0

    .line 75
    :pswitch_3
    invoke-virtual {p3}, Landroid/graphics/Matrix;->reset()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static transformPhysicalToLogicalCoordinates(IIILandroid/graphics/Matrix;)V
    .locals 1

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    .line 60
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown rotation: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    const/high16 p0, 0x42b40000    # 90.0f

    .line 56
    invoke-virtual {p3, p0}, Landroid/graphics/Matrix;->setRotate(F)V

    int-to-float p0, p2

    .line 57
    invoke-virtual {p3, p0, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    :pswitch_1
    const/high16 p0, 0x43340000    # 180.0f

    .line 52
    invoke-virtual {p3, p0}, Landroid/graphics/Matrix;->setRotate(F)V

    int-to-float p0, p1

    int-to-float p1, p2

    .line 53
    invoke-virtual {p3, p0, p1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    :pswitch_2
    const/high16 p0, 0x43870000    # 270.0f

    .line 48
    invoke-virtual {p3, p0}, Landroid/graphics/Matrix;->setRotate(F)V

    int-to-float p0, p1

    .line 49
    invoke-virtual {p3, v0, p0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    .line 45
    :pswitch_3
    invoke-virtual {p3}, Landroid/graphics/Matrix;->reset()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static transformRect(Landroid/graphics/Matrix;Landroid/graphics/Rect;Landroid/graphics/RectF;)V
    .locals 2

    if-nez p2, :cond_0

    .line 126
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    .line 128
    :cond_0
    invoke-virtual {p2, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 129
    invoke-virtual {p0, p2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 130
    iget p0, p2, Landroid/graphics/RectF;->left:F

    float-to-int p0, p0

    iget v0, p2, Landroid/graphics/RectF;->top:F

    float-to-int v0, v0

    iget v1, p2, Landroid/graphics/RectF;->right:F

    float-to-int v1, v1

    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    float-to-int p2, p2

    invoke-virtual {p1, p0, v0, v1, p2}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public static transformToRotation(IIIILandroid/graphics/Matrix;)V
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    move v1, p2

    goto :goto_1

    :cond_2
    move v1, p3

    :goto_1
    if-eqz v0, :cond_3

    move p2, p3

    .line 111
    :cond_3
    new-instance p3, Landroid/graphics/Matrix;

    invoke-direct {p3}, Landroid/graphics/Matrix;-><init>()V

    .line 112
    invoke-static {p0, p2, v1, p4}, Lcom/miui/home/launcher/util/CoordinateTransforms;->transformLogicalToPhysicalCoordinates(IIILandroid/graphics/Matrix;)V

    .line 113
    invoke-static {p1, p2, v1, p3}, Lcom/miui/home/launcher/util/CoordinateTransforms;->transformPhysicalToLogicalCoordinates(IIILandroid/graphics/Matrix;)V

    .line 114
    invoke-virtual {p4, p3}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    return-void
.end method
