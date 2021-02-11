.class public Lcom/miui/home/launcher/uninstall/BoomValueAnimator;
.super Landroid/animation/ValueAnimator;
.source "BoomValueAnimator.java"

# interfaces
.implements Lcom/miui/home/launcher/common/ParasiticDrawingObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/uninstall/BoomValueAnimator$Spark;
    }
.end annotation


# static fields
.field private static SPARK_COL:I = 0x11

.field private static SPARK_ROW:I = 0x11


# instance fields
.field private mDragLayer:Lcom/miui/home/launcher/DragLayer;

.field private mPaint:Landroid/graphics/Paint;

.field private mSparks:[Lcom/miui/home/launcher/uninstall/BoomValueAnimator$Spark;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isLowLevelOrLiteDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    .line 23
    sput v0, Lcom/miui/home/launcher/uninstall/BoomValueAnimator;->SPARK_ROW:I

    .line 24
    sput v0, Lcom/miui/home/launcher/uninstall/BoomValueAnimator;->SPARK_COL:I

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/miui/home/launcher/DragLayer;Landroid/graphics/Bitmap;[I)V
    .locals 22

    move-object/from16 v0, p0

    .line 33
    invoke-direct/range {p0 .. p0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 30
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, v0, Lcom/miui/home/launcher/uninstall/BoomValueAnimator;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    .line 34
    iput-object v1, v0, Lcom/miui/home/launcher/uninstall/BoomValueAnimator;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    .line 35
    sget v1, Lcom/miui/home/launcher/uninstall/BoomValueAnimator;->SPARK_ROW:I

    sget v2, Lcom/miui/home/launcher/uninstall/BoomValueAnimator;->SPARK_COL:I

    mul-int/2addr v1, v2

    new-array v1, v1, [Lcom/miui/home/launcher/uninstall/BoomValueAnimator$Spark;

    iput-object v1, v0, Lcom/miui/home/launcher/uninstall/BoomValueAnimator;->mSparks:[Lcom/miui/home/launcher/uninstall/BoomValueAnimator$Spark;

    .line 36
    new-instance v1, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Random;-><init>(J)V

    .line 37
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    .line 38
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    .line 39
    sget v2, Lcom/miui/home/launcher/uninstall/BoomValueAnimator;->SPARK_ROW:I

    const/4 v13, 0x2

    add-int/2addr v2, v13

    div-int v14, v12, v2

    .line 40
    sget v2, Lcom/miui/home/launcher/uninstall/BoomValueAnimator;->SPARK_COL:I

    add-int/2addr v2, v13

    div-int v15, v11, v2

    mul-int v2, v12, v11

    .line 42
    new-array v3, v2, [I

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p2

    move-object v5, v3

    move v7, v12

    move v10, v12

    .line 43
    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const/4 v8, 0x0

    move v2, v8

    move v10, v9

    .line 46
    :goto_0
    sget v4, Lcom/miui/home/launcher/uninstall/BoomValueAnimator;->SPARK_COL:I

    const/4 v11, 0x1

    if-ge v10, v4, :cond_2

    move/from16 v16, v2

    move v2, v9

    .line 47
    :goto_1
    sget v4, Lcom/miui/home/launcher/uninstall/BoomValueAnimator;->SPARK_ROW:I

    if-ge v2, v4, :cond_1

    .line 48
    sget v4, Lcom/miui/home/launcher/uninstall/BoomValueAnimator;->SPARK_COL:I

    mul-int/2addr v4, v10

    add-int v17, v4, v2

    .line 49
    iget-object v7, v0, Lcom/miui/home/launcher/uninstall/BoomValueAnimator;->mSparks:[Lcom/miui/home/launcher/uninstall/BoomValueAnimator$Spark;

    new-instance v18, Lcom/miui/home/launcher/uninstall/BoomValueAnimator$Spark;

    add-int/lit8 v19, v2, 0x1

    mul-int v2, v19, v14

    add-int/lit8 v4, v10, 0x1

    mul-int/2addr v4, v15

    sub-int/2addr v4, v11

    mul-int/2addr v4, v12

    add-int/2addr v2, v4

    sub-int/2addr v2, v11

    aget v4, v3, v2

    move-object/from16 v2, v18

    move-object/from16 v20, v3

    move/from16 v3, v17

    move v5, v12

    move-object/from16 v6, p3

    move-object/from16 v21, v7

    move-object v7, v1

    invoke-direct/range {v2 .. v7}, Lcom/miui/home/launcher/uninstall/BoomValueAnimator$Spark;-><init>(III[ILjava/util/Random;)V

    aput-object v18, v21, v17

    .line 54
    iget-object v2, v0, Lcom/miui/home/launcher/uninstall/BoomValueAnimator;->mSparks:[Lcom/miui/home/launcher/uninstall/BoomValueAnimator$Spark;

    aget-object v2, v2, v17

    invoke-virtual {v2}, Lcom/miui/home/launcher/uninstall/BoomValueAnimator$Spark;->getDisappearTime()F

    move-result v2

    cmpl-float v3, v2, v16

    if-lez v3, :cond_0

    move/from16 v16, v2

    :cond_0
    move/from16 v2, v19

    move-object/from16 v3, v20

    goto :goto_1

    :cond_1
    move-object/from16 v20, v3

    add-int/lit8 v10, v10, 0x1

    move/from16 v2, v16

    goto :goto_0

    .line 60
    :cond_2
    new-array v1, v13, [F

    aput v8, v1, v9

    aput v2, v1, v11

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/uninstall/BoomValueAnimator;->setFloatValues([F)V

    float-to-int v1, v2

    int-to-long v1, v1

    .line 61
    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/uninstall/BoomValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 62
    sget-object v1, Lcom/miui/home/launcher/common/Ease$Linear;->easeNone:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/uninstall/BoomValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)Z
    .locals 5

    .line 74
    invoke-virtual {p0}, Lcom/miui/home/launcher/uninstall/BoomValueAnimator;->isStarted()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 75
    iget-object v0, p0, Lcom/miui/home/launcher/uninstall/BoomValueAnimator;->mSparks:[Lcom/miui/home/launcher/uninstall/BoomValueAnimator$Spark;

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 76
    invoke-virtual {p0}, Lcom/miui/home/launcher/uninstall/BoomValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/miui/home/launcher/uninstall/BoomValueAnimator$Spark;->update(F)V

    .line 77
    iget-object v4, p0, Lcom/miui/home/launcher/uninstall/BoomValueAnimator;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v4, p1}, Lcom/miui/home/launcher/uninstall/BoomValueAnimator$Spark;->draw(Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 79
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/uninstall/BoomValueAnimator;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    invoke-virtual {p1}, Lcom/miui/home/launcher/DragLayer;->invalidate()V

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public start()V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/miui/home/launcher/uninstall/BoomValueAnimator;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/DragLayer;->attachParasiticDrawingObject(Lcom/miui/home/launcher/common/ParasiticDrawingObject;)V

    .line 68
    invoke-super {p0}, Landroid/animation/ValueAnimator;->start()V

    .line 69
    iget-object v0, p0, Lcom/miui/home/launcher/uninstall/BoomValueAnimator;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DragLayer;->invalidate()V

    return-void
.end method
