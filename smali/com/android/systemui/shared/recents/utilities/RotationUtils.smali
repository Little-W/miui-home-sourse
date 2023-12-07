.class public Lcom/android/systemui/shared/recents/utilities/RotationUtils;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deltaRotation(II)I
    .locals 0

    sub-int/2addr p1, p0

    if-gez p1, :cond_0

    add-int/lit8 p1, p1, 0x4

    :cond_0
    return p1
.end method

.method public static reverseRotationDirectionAroundZAxis(I)I
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    if-ne p0, v0, :cond_1

    move p0, v1

    :cond_1
    :goto_0
    return p0
.end method

.method public static rotateBounds(Landroid/graphics/Rect;III)V
    .locals 3

    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Landroid/graphics/Rect;->top:I

    if-eqz p3, :cond_3

    const/4 v2, 0x1

    if-eq p3, v2, :cond_2

    const/4 v2, 0x2

    if-eq p3, v2, :cond_1

    const/4 p1, 0x3

    if-eq p3, p1, :cond_0

    goto :goto_0

    :cond_0
    iget p1, p0, Landroid/graphics/Rect;->bottom:I

    sub-int p1, p2, p1

    iput p1, p0, Landroid/graphics/Rect;->left:I

    iget p1, p0, Landroid/graphics/Rect;->right:I

    iput p1, p0, Landroid/graphics/Rect;->bottom:I

    iget p1, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr p2, p1

    iput p2, p0, Landroid/graphics/Rect;->right:I

    iput v0, p0, Landroid/graphics/Rect;->top:I

    :goto_0
    return-void

    :cond_1
    iget p3, p0, Landroid/graphics/Rect;->right:I

    sub-int p3, p1, p3

    iput p3, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr p1, v0

    iput p1, p0, Landroid/graphics/Rect;->right:I

    iget p1, p0, Landroid/graphics/Rect;->bottom:I

    sub-int p1, p2, p1

    iput p1, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr p2, v1

    iput p2, p0, Landroid/graphics/Rect;->bottom:I

    return-void

    :cond_2
    iget p2, p0, Landroid/graphics/Rect;->top:I

    iput p2, p0, Landroid/graphics/Rect;->left:I

    iget p2, p0, Landroid/graphics/Rect;->right:I

    sub-int p2, p1, p2

    iput p2, p0, Landroid/graphics/Rect;->top:I

    iget p2, p0, Landroid/graphics/Rect;->bottom:I

    iput p2, p0, Landroid/graphics/Rect;->right:I

    sub-int/2addr p1, v0

    iput p1, p0, Landroid/graphics/Rect;->bottom:I

    :cond_3
    return-void
.end method

.method public static rotateBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;I)V
    .locals 1

    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-static {p0, v0, p1, p2}, Lcom/android/systemui/shared/recents/utilities/RotationUtils;->rotateBounds(Landroid/graphics/Rect;III)V

    return-void
.end method

.method public static rotateBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V
    .locals 0

    invoke-static {p2, p3}, Lcom/android/systemui/shared/recents/utilities/RotationUtils;->deltaRotation(II)I

    move-result p2

    invoke-static {p0, p1, p2}, Lcom/android/systemui/shared/recents/utilities/RotationUtils;->rotateBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    return-void
.end method

.method public static rotateInsets(Landroid/graphics/Insets;I)Landroid/graphics/Insets;
    .locals 2

    if-eqz p0, :cond_4

    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    iget p1, p0, Landroid/graphics/Insets;->bottom:I

    iget v0, p0, Landroid/graphics/Insets;->left:I

    iget v1, p0, Landroid/graphics/Insets;->top:I

    iget p0, p0, Landroid/graphics/Insets;->right:I

    invoke-static {p1, v0, v1, p0}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object p0

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown rotation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget p1, p0, Landroid/graphics/Insets;->right:I

    iget v0, p0, Landroid/graphics/Insets;->bottom:I

    iget v1, p0, Landroid/graphics/Insets;->left:I

    iget p0, p0, Landroid/graphics/Insets;->top:I

    invoke-static {p1, v0, v1, p0}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object p0

    goto :goto_0

    :cond_3
    iget p1, p0, Landroid/graphics/Insets;->top:I

    iget v0, p0, Landroid/graphics/Insets;->right:I

    iget v1, p0, Landroid/graphics/Insets;->bottom:I

    iget p0, p0, Landroid/graphics/Insets;->left:I

    invoke-static {p1, v0, v1, p0}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object p0

    :cond_4
    :goto_0
    return-object p0
.end method

.method public static rotatePoint(Landroid/graphics/Point;III)V
    .locals 2

    iget v0, p0, Landroid/graphics/Point;->x:I

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    iget p1, p0, Landroid/graphics/Point;->y:I

    sub-int/2addr p3, p1

    iput p3, p0, Landroid/graphics/Point;->x:I

    iput v0, p0, Landroid/graphics/Point;->y:I

    :goto_0
    return-void

    :cond_1
    iget p1, p0, Landroid/graphics/Point;->x:I

    sub-int/2addr p2, p1

    iput p2, p0, Landroid/graphics/Point;->x:I

    iget p1, p0, Landroid/graphics/Point;->y:I

    sub-int/2addr p3, p1

    iput p3, p0, Landroid/graphics/Point;->y:I

    return-void

    :cond_2
    iget p1, p0, Landroid/graphics/Point;->y:I

    iput p1, p0, Landroid/graphics/Point;->x:I

    sub-int/2addr p2, v0

    iput p2, p0, Landroid/graphics/Point;->y:I

    :cond_3
    return-void
.end method

.method public static rotatePointF(Landroid/graphics/PointF;IFF)V
    .locals 2

    iget v0, p0, Landroid/graphics/PointF;->x:F

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    iget p1, p0, Landroid/graphics/PointF;->y:F

    sub-float/2addr p3, p1

    iput p3, p0, Landroid/graphics/PointF;->x:F

    iput v0, p0, Landroid/graphics/PointF;->y:F

    :goto_0
    return-void

    :cond_1
    iget p1, p0, Landroid/graphics/PointF;->x:F

    sub-float/2addr p2, p1

    iput p2, p0, Landroid/graphics/PointF;->x:F

    iget p1, p0, Landroid/graphics/PointF;->y:F

    sub-float/2addr p3, p1

    iput p3, p0, Landroid/graphics/PointF;->y:F

    return-void

    :cond_2
    iget p1, p0, Landroid/graphics/PointF;->y:F

    iput p1, p0, Landroid/graphics/PointF;->x:F

    sub-float/2addr p2, v0

    iput p2, p0, Landroid/graphics/PointF;->y:F

    :cond_3
    return-void
.end method

.method public static rotateSurface(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;I)V
    .locals 13

    if-eqz p2, :cond_3

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, -0x40800000    # -1.0f

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    goto :goto_0

    :cond_1
    const/high16 v9, -0x40800000    # -1.0f

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/high16 v12, -0x40800000    # -1.0f

    move-object v7, p0

    move-object v8, p1

    invoke-virtual/range {v7 .. v12}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    goto :goto_0

    :cond_3
    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    move-object v6, p0

    move-object v7, p1

    invoke-virtual/range {v6 .. v11}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    :goto_0
    return-void
.end method

.method public static transformPhysicalToLogicalCoordinates(IIILandroid/graphics/Matrix;)V
    .locals 2

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 p1, 0x3

    if-ne p0, p1, :cond_0

    const/high16 p0, 0x42b40000    # 90.0f

    invoke-virtual {p3, p0}, Landroid/graphics/Matrix;->setRotate(F)V

    int-to-float p0, p2

    invoke-virtual {p3, p0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    :cond_0
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

    :cond_1
    const/high16 p0, 0x43340000    # 180.0f

    invoke-virtual {p3, p0}, Landroid/graphics/Matrix;->setRotate(F)V

    int-to-float p0, p1

    int-to-float p1, p2

    invoke-virtual {p3, p0, p1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    :cond_2
    const/high16 p0, 0x43870000    # 270.0f

    invoke-virtual {p3, p0}, Landroid/graphics/Matrix;->setRotate(F)V

    int-to-float p0, p1

    invoke-virtual {p3, v1, p0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    :cond_3
    invoke-virtual {p3}, Landroid/graphics/Matrix;->reset()V

    :goto_0
    return-void
.end method
