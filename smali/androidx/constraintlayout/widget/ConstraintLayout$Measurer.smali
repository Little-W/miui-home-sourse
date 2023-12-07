.class Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/widget/ConstraintLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Measurer"
.end annotation


# instance fields
.field layout:Landroidx/constraintlayout/widget/ConstraintLayout;

.field layoutHeightSpec:I

.field layoutWidthSpec:I

.field paddingBottom:I

.field paddingHeight:I

.field paddingTop:I

.field paddingWidth:I

.field final synthetic this$0:Landroidx/constraintlayout/widget/ConstraintLayout;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 0

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->this$0:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-void
.end method


# virtual methods
.method public captureLayoutInfos(IIIIII)V
    .locals 0

    iput p3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->paddingTop:I

    iput p4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->paddingBottom:I

    iput p5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->paddingWidth:I

    iput p6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->paddingHeight:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layoutWidthSpec:I

    iput p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layoutHeightSpec:I

    return-void
.end method

.method public final didMeasures()V
    .locals 5

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v3, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v4, v3, Landroidx/constraintlayout/widget/Placeholder;

    if-eqz v4, :cond_0

    check-cast v3, Landroidx/constraintlayout/widget/Placeholder;

    iget-object v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/widget/Placeholder;->updatePostMeasure(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->access$000(Landroidx/constraintlayout/widget/ConstraintLayout;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    :goto_1
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->access$000(Landroidx/constraintlayout/widget/ConstraintLayout;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/widget/ConstraintHelper;

    iget-object v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/widget/ConstraintHelper;->updatePostMeasure(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final measure(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-ne v3, v4, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isInPlaceholder()Z

    move-result v3

    if-nez v3, :cond_1

    iput v5, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measuredWidth:I

    iput v5, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measuredHeight:I

    iput v5, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measuredBaseline:I

    return-void

    :cond_1
    iget-object v3, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    iget-object v4, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    iget v6, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->horizontalDimension:I

    iget v7, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->verticalDimension:I

    iget v8, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->paddingTop:I

    iget v9, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->paddingBottom:I

    add-int/2addr v8, v9

    iget v9, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->paddingWidth:I

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getCompanionWidget()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    sget-object v11, Landroidx/constraintlayout/widget/ConstraintLayout$1;->$SwitchMap$androidx$constraintlayout$solver$widgets$ConstraintWidget$DimensionBehaviour:[I

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->ordinal()I

    move-result v12

    aget v11, v11, v12

    const/4 v12, 0x4

    const/4 v14, -0x2

    const/4 v13, 0x3

    const/4 v15, 0x2

    const/4 v5, 0x1

    if-eq v11, v5, :cond_b

    if-eq v11, v15, :cond_9

    if-eq v11, v13, :cond_8

    if-eq v11, v12, :cond_2

    const/4 v6, 0x0

    :goto_0
    const/4 v9, 0x0

    goto/16 :goto_3

    :cond_2
    iget v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layoutWidthSpec:I

    invoke-static {v6, v9, v14}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v6

    iget v9, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-ne v9, v5, :cond_3

    move v9, v5

    goto :goto_1

    :cond_3
    const/4 v9, 0x0

    :goto_1
    iget-object v11, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    const/16 v16, 0x0

    aput v16, v11, v15

    iget-boolean v11, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->useCurrentDimensions:Z

    if-eqz v11, :cond_a

    if-eqz v9, :cond_4

    iget-object v11, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    aget v11, v11, v13

    if-eqz v11, :cond_4

    iget-object v11, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    aget v11, v11, v16

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v12

    if-ne v11, v12, :cond_5

    :cond_4
    instance-of v11, v10, Landroidx/constraintlayout/widget/Placeholder;

    if-eqz v11, :cond_6

    :cond_5
    move v11, v5

    goto :goto_2

    :cond_6
    const/4 v11, 0x0

    :goto_2
    if-eqz v9, :cond_7

    if-eqz v11, :cond_a

    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v6

    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v6, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    goto :goto_0

    :cond_8
    iget v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layoutWidthSpec:I

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHorizontalMargin()I

    move-result v11

    add-int/2addr v9, v11

    const/4 v11, -0x1

    invoke-static {v6, v9, v11}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v6

    iget-object v9, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    aput v11, v9, v15

    goto :goto_0

    :cond_9
    iget v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layoutWidthSpec:I

    invoke-static {v6, v9, v14}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v6

    iget-object v9, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    aput v14, v9, v15

    :cond_a
    move v9, v5

    goto :goto_3

    :cond_b
    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v6, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    iget-object v9, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    aput v6, v9, v15

    move v6, v11

    goto :goto_0

    :goto_3
    sget-object v11, Landroidx/constraintlayout/widget/ConstraintLayout$1;->$SwitchMap$androidx$constraintlayout$solver$widgets$ConstraintWidget$DimensionBehaviour:[I

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->ordinal()I

    move-result v12

    aget v11, v11, v12

    if-eq v11, v5, :cond_15

    if-eq v11, v15, :cond_13

    if-eq v11, v13, :cond_12

    const/4 v7, 0x4

    if-eq v11, v7, :cond_c

    const/4 v0, 0x0

    :goto_4
    const/4 v7, 0x0

    goto/16 :goto_7

    :cond_c
    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layoutHeightSpec:I

    invoke-static {v0, v8, v14}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v0

    iget v7, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-ne v7, v5, :cond_d

    move v7, v5

    goto :goto_5

    :cond_d
    const/4 v7, 0x0

    :goto_5
    iget-object v8, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    const/4 v11, 0x0

    aput v11, v8, v13

    iget-boolean v8, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->useCurrentDimensions:Z

    if-eqz v8, :cond_14

    if-eqz v7, :cond_e

    iget-object v8, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    aget v8, v8, v15

    if-eqz v8, :cond_e

    iget-object v8, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    aget v8, v8, v5

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v11

    if-ne v8, v11, :cond_f

    :cond_e
    instance-of v8, v10, Landroidx/constraintlayout/widget/Placeholder;

    if-eqz v8, :cond_10

    :cond_f
    move v8, v5

    goto :goto_6

    :cond_10
    const/4 v8, 0x0

    :goto_6
    if-eqz v7, :cond_11

    if-eqz v8, :cond_14

    :cond_11
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v0

    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v0, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_4

    :cond_12
    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layoutHeightSpec:I

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVerticalMargin()I

    move-result v7

    add-int/2addr v8, v7

    const/4 v7, -0x1

    invoke-static {v0, v8, v7}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v0

    iget-object v8, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    aput v7, v8, v13

    goto :goto_4

    :cond_13
    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layoutHeightSpec:I

    invoke-static {v0, v8, v14}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v0

    iget-object v7, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    aput v14, v7, v13

    :cond_14
    move v7, v5

    goto :goto_7

    :cond_15
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v7, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    iget-object v0, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    aput v7, v0, v13

    move v0, v8

    goto :goto_4

    :goto_7
    sget-object v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v8, :cond_16

    move v8, v5

    goto :goto_8

    :cond_16
    const/4 v8, 0x0

    :goto_8
    sget-object v11, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v11, :cond_17

    move v11, v5

    goto :goto_9

    :cond_17
    const/4 v11, 0x0

    :goto_9
    sget-object v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v4, v12, :cond_19

    sget-object v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v12, :cond_18

    goto :goto_a

    :cond_18
    const/4 v4, 0x0

    goto :goto_b

    :cond_19
    :goto_a
    move v4, v5

    :goto_b
    sget-object v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v3, v12, :cond_1b

    sget-object v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v12, :cond_1a

    goto :goto_c

    :cond_1a
    const/4 v3, 0x0

    goto :goto_d

    :cond_1b
    :goto_c
    move v3, v5

    :goto_d
    const/4 v12, 0x0

    if-eqz v8, :cond_1c

    iget v14, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    cmpl-float v14, v14, v12

    if-lez v14, :cond_1c

    move v14, v5

    goto :goto_e

    :cond_1c
    const/4 v14, 0x0

    :goto_e
    if-eqz v11, :cond_1d

    iget v13, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    cmpl-float v12, v13, v12

    if-lez v12, :cond_1d

    move v12, v5

    goto :goto_f

    :cond_1d
    const/4 v12, 0x0

    :goto_f
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iget-boolean v5, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->useCurrentDimensions:Z

    if-nez v5, :cond_1f

    if-eqz v8, :cond_1f

    iget v5, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-nez v5, :cond_1f

    if-eqz v11, :cond_1f

    iget v5, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-eqz v5, :cond_1e

    goto :goto_10

    :cond_1e
    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/16 v16, 0x0

    goto/16 :goto_19

    :cond_1f
    :goto_10
    instance-of v5, v10, Landroidx/constraintlayout/widget/VirtualLayout;

    if-eqz v5, :cond_20

    instance-of v5, v1, Landroidx/constraintlayout/solver/widgets/VirtualLayout;

    if-eqz v5, :cond_20

    move-object v5, v1

    check-cast v5, Landroidx/constraintlayout/solver/widgets/VirtualLayout;

    move-object v8, v10

    check-cast v8, Landroidx/constraintlayout/widget/VirtualLayout;

    invoke-virtual {v8, v5, v6, v0}, Landroidx/constraintlayout/widget/VirtualLayout;->onMeasure(Landroidx/constraintlayout/solver/widgets/VirtualLayout;II)V

    goto :goto_11

    :cond_20
    invoke-virtual {v10, v6, v0}, Landroid/view/View;->measure(II)V

    :goto_11
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    invoke-virtual {v10}, Landroid/view/View;->getBaseline()I

    move-result v11

    if-eqz v9, :cond_21

    iget-object v9, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    const/16 v16, 0x0

    aput v5, v9, v16

    iget-object v9, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    aput v8, v9, v15

    goto :goto_12

    :cond_21
    const/16 v16, 0x0

    iget-object v9, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    aput v16, v9, v16

    iget-object v9, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    aput v16, v9, v15

    :goto_12
    if-eqz v7, :cond_22

    iget-object v7, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    const/4 v9, 0x1

    aput v8, v7, v9

    iget-object v7, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    const/4 v15, 0x3

    aput v5, v7, v15

    goto :goto_13

    :cond_22
    const/4 v9, 0x1

    const/4 v15, 0x3

    iget-object v7, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    aput v16, v7, v9

    iget-object v7, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    aput v16, v7, v15

    :goto_13
    iget v7, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    if-lez v7, :cond_23

    iget v7, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v7

    goto :goto_14

    :cond_23
    move v7, v5

    :goto_14
    iget v9, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    if-lez v9, :cond_24

    iget v9, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    invoke-static {v9, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    :cond_24
    iget v9, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    if-lez v9, :cond_25

    iget v9, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    invoke-static {v9, v8}, Ljava/lang/Math;->max(II)I

    move-result v9

    goto :goto_15

    :cond_25
    move v9, v8

    :goto_15
    iget v15, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    if-lez v15, :cond_26

    iget v15, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    invoke-static {v15, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    :cond_26
    const/high16 v15, 0x3f000000    # 0.5f

    if-eqz v14, :cond_27

    if-eqz v4, :cond_27

    iget v3, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    int-to-float v4, v9

    mul-float/2addr v4, v3

    add-float/2addr v4, v15

    float-to-int v3, v4

    move v7, v3

    goto :goto_16

    :cond_27
    if-eqz v12, :cond_28

    if-eqz v3, :cond_28

    iget v3, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    int-to-float v4, v7

    div-float/2addr v4, v3

    add-float/2addr v4, v15

    float-to-int v3, v4

    move v9, v3

    :cond_28
    :goto_16
    if-ne v5, v7, :cond_2a

    if-eq v8, v9, :cond_29

    goto :goto_18

    :cond_29
    move v5, v7

    move v0, v9

    move v3, v11

    :goto_17
    const/4 v4, -0x1

    goto :goto_19

    :cond_2a
    :goto_18
    const/high16 v3, 0x40000000    # 2.0f

    if-eq v5, v7, :cond_2b

    invoke-static {v7, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    :cond_2b
    if-eq v8, v9, :cond_2c

    invoke-static {v9, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    :cond_2c
    invoke-virtual {v10, v6, v0}, Landroid/view/View;->measure(II)V

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {v10}, Landroid/view/View;->getBaseline()I

    move-result v3

    goto :goto_17

    :goto_19
    if-eq v3, v4, :cond_2d

    const/4 v4, 0x1

    goto :goto_1a

    :cond_2d
    move/from16 v4, v16

    :goto_1a
    iget v6, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->horizontalDimension:I

    if-ne v5, v6, :cond_2f

    iget v6, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->verticalDimension:I

    if-eq v0, v6, :cond_2e

    goto :goto_1b

    :cond_2e
    move/from16 v6, v16

    goto :goto_1c

    :cond_2f
    :goto_1b
    const/4 v6, 0x1

    :goto_1c
    iput-boolean v6, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measuredNeedsSolverPass:Z

    iget-boolean v6, v13, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->needsBaseline:Z

    if-eqz v6, :cond_30

    const/4 v4, 0x1

    :cond_30
    if-eqz v4, :cond_31

    const/4 v6, -0x1

    if-eq v3, v6, :cond_31

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getBaselineDistance()I

    move-result v1

    if-eq v1, v3, :cond_31

    const/4 v1, 0x1

    iput-boolean v1, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measuredNeedsSolverPass:Z

    :cond_31
    iput v5, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measuredWidth:I

    iput v0, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measuredHeight:I

    iput-boolean v4, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measuredHasBaseline:Z

    iput v3, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measuredBaseline:I

    return-void
.end method
