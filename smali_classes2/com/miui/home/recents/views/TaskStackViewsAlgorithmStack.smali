.class public Lcom/miui/home/recents/views/TaskStackViewsAlgorithmStack;
.super Lcom/miui/home/recents/views/TaskStackViewsAlgorithmHorizontal;


# static fields
.field public static isIos:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmHorizontal;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getTaskViewTransform(IFLcom/miui/home/recents/views/TaskViewTransform;)V
    .locals 14

    sget-boolean v11, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmStack;->isIos:Z

    if-eqz v11, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmStack;->calculateTaskViewOffsetXAndY(I)[I

    move-result-object v2

    iget-object v11, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmStack;->mTaskViewRect:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v11

    int-to-float v9, v11

    const/4 v11, 0x0

    aget v11, v2, v11

    const/4 v12, 0x0

    move/from16 v0, p2

    invoke-virtual {p0, v12, v0}, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmStack;->getXForDeltaP(FF)I

    move-result v12

    add-int/2addr v11, v12

    int-to-float v10, v11

    const/high16 v7, 0x3f800000    # 1.0f

    move-object/from16 v0, p3

    iget-object v11, v0, Lcom/miui/home/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    iget v3, v11, Landroid/graphics/RectF;->left:F

    iget-object v11, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmStack;->mTaskViewRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->left:I

    int-to-float v5, v11

    move v8, v10

    add-float v11, v5, v10

    cmpg-float v11, v11, v3

    if-gez v11, :cond_3

    const/4 v4, 0x1

    :goto_1
    const/4 v1, 0x0

    iget-object v11, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmStack;->mTaskStackViewRect:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v11

    int-to-float v6, v11

    const v11, 0x40800000    # 4.0f

    div-float v11, v6, v11

    sub-float/2addr v6, v11

    const v11, 0x42200000    # 40.0f

    div-float/2addr v6, v11

    const v11, 0x40733333    # 3.8f

    div-float v12, v3, v6

    const v13, 0x3df5c28f    # 0.12f

    mul-float/2addr v12, v13

    sub-float v8, v11, v12

    const v11, 0x3f800000    # 1.0f

    cmpg-float v11, v8, v11

    if-gez v11, :cond_1

    const v8, 0x3f800000    # 1.0f

    :cond_1
    const v11, 0x3f79999a    # 0.975f

    const v12, 0x40966666    # 4.7f

    div-float v12, v6, v12

    div-float v12, v3, v12

    const v13, 0x3aebedfa    # 0.0018f

    mul-float/2addr v12, v13

    add-float v7, v11, v12

    const/high16 v11, 0x3f800000    # 1.0f

    cmpl-float v11, v7, v11

    if-lez v11, :cond_2

    const/high16 v7, 0x3f800000    # 1.0f

    :cond_2
    div-float v8, v10, v8

    iget v11, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmStack;->mNumStackTasks:I

    sub-int/2addr v11, p1

    int-to-float v11, v11

    const/high16 v12, 0x41200000    # 10.0f

    div-float/2addr v11, v12

    move-object/from16 v0, p3

    iput v11, v0, Lcom/miui/home/recents/views/TaskViewTransform;->translationZ:F

    move-object/from16 v0, p3

    iput v7, v0, Lcom/miui/home/recents/views/TaskViewTransform;->scale:F

    move-object/from16 v0, p3

    iput v7, v0, Lcom/miui/home/recents/views/TaskViewTransform;->alpha:F

    move-object/from16 v0, p3

    iget-object v11, v0, Lcom/miui/home/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    iget-object v12, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmStack;->mTaskViewRect:Landroid/graphics/Rect;

    invoke-virtual {v11, v12}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    move-object/from16 v0, p3

    iget-object v11, v0, Lcom/miui/home/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    const/4 v12, 0x1

    aget v12, v2, v12

    int-to-float v12, v12

    invoke-virtual {v11, v8, v12}, Landroid/graphics/RectF;->offset(FF)V

    const/4 v11, 0x1

    move-object/from16 v0, p3

    iput-boolean v11, v0, Lcom/miui/home/recents/views/TaskViewTransform;->visible:Z

    goto/16 :goto_0

    :cond_3
    const/4 v4, 0x0

    goto :goto_1
.end method
