.class public abstract Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;
.super Ljava/lang/Object;
.source "WidgetRun.java"

# interfaces
.implements Landroidx/constraintlayout/solver/widgets/analyzer/Dependency;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun$RunType;
    }
.end annotation


# instance fields
.field dimension:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

.field protected dimensionBehavior:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

.field public end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

.field protected mRunType:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun$RunType;

.field public matchConstraintsType:I

.field public orientation:I

.field resolved:Z

.field runGroup:Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;

.field public start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

.field widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;-><init>(Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;)V

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    const/4 v0, 0x0

    .line 36
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->orientation:I

    .line 37
    iput-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->resolved:Z

    .line 38
    new-instance v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;-><init>(Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;)V

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    .line 39
    new-instance v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;-><init>(Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;)V

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    .line 41
    sget-object v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun$RunType;->NONE:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun$RunType;

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->mRunType:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun$RunType;

    .line 44
    iput-object p1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    return-void
.end method

.method private resolveDimension(II)V
    .locals 3

    .line 171
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->matchConstraintsType:I

    const/high16 v1, 0x3f000000    # 0.5f

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_4

    .line 199
    :pswitch_0
    iget-object p2, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object p2, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object p2, p2, Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;->dimensionBehavior:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne p2, v0, :cond_0

    iget-object p2, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object p2, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    iget p2, p2, Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;->matchConstraintsType:I

    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    iget-object p2, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object p2, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object p2, p2, Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;->dimensionBehavior:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne p2, v2, :cond_0

    iget-object p2, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object p2, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    iget p2, p2, Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;->matchConstraintsType:I

    if-ne p2, v0, :cond_0

    goto/16 :goto_4

    :cond_0
    if-nez p1, :cond_1

    .line 205
    iget-object p2, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object p2, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    goto :goto_0

    :cond_1
    iget-object p2, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object p2, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    .line 206
    :goto_0
    iget-object v0, p2, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    iget-boolean v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->resolved:Z

    if-eqz v0, :cond_5

    .line 207
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getDimensionRatio()F

    move-result v0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_2

    .line 210
    iget-object p1, p2, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    iget p1, p1, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->value:I

    int-to-float p1, p1

    div-float/2addr p1, v0

    add-float/2addr p1, v1

    float-to-int p1, p1

    goto :goto_1

    .line 212
    :cond_2
    iget-object p1, p2, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    iget p1, p1, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->value:I

    int-to-float p1, p1

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    float-to-int p1, v0

    .line 214
    :goto_1
    iget-object p2, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    invoke-virtual {p2, p1}, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->resolve(I)V

    goto :goto_4

    .line 177
    :pswitch_1
    iget-object p2, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    invoke-virtual {p2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object p2

    if-eqz p2, :cond_5

    if-nez p1, :cond_3

    .line 179
    iget-object p2, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    goto :goto_2

    :cond_3
    iget-object p2, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    .line 182
    :goto_2
    iget-object v0, p2, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    iget-boolean v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->resolved:Z

    if-eqz v0, :cond_5

    if-nez p1, :cond_4

    .line 183
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintPercentWidth:F

    goto :goto_3

    :cond_4
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintPercentHeight:F

    .line 186
    :goto_3
    iget-object p2, p2, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    iget p2, p2, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->value:I

    int-to-float p2, p2

    mul-float/2addr p2, v0

    add-float/2addr p2, v1

    float-to-int p2, p2

    .line 188
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    invoke-virtual {p0, p2, p1}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->getLimitedDimension(II)I

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->resolve(I)V

    goto :goto_4

    .line 194
    :pswitch_2
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->wrapValue:I

    invoke-virtual {p0, v0, p1}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->getLimitedDimension(II)I

    move-result p1

    .line 195
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->resolve(I)V

    goto :goto_4

    .line 173
    :pswitch_3
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    invoke-virtual {p0, p2, p1}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->getLimitedDimension(II)I

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->resolve(I)V

    :cond_5
    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected final addTarget(Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;I)V
    .locals 1

    .line 280
    iget-object v0, p1, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 281
    iput p3, p1, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->margin:I

    .line 282
    iget-object p2, p2, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected final addTarget(Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;ILandroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;)V
    .locals 2

    .line 286
    iget-object v0, p1, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 287
    iget-object v0, p1, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 288
    iput p3, p1, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->marginFactor:I

    .line 289
    iput-object p4, p1, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->marginDependency:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    .line 290
    iget-object p2, p2, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 291
    iget-object p2, p4, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->dependencies:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method abstract apply()V
.end method

.method abstract applyToWidget()V
.end method

.method abstract clear()V
.end method

.method protected final getLimitedDimension(II)I
    .locals 1

    if-nez p2, :cond_1

    .line 234
    iget-object p2, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget p2, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    .line 235
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    .line 236
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-lez p2, :cond_0

    .line 238
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_0
    if-eq v0, p1, :cond_3

    move p1, v0

    goto :goto_1

    .line 244
    :cond_1
    iget-object p2, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget p2, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    .line 245
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    .line 246
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-lez p2, :cond_2

    .line 248
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_0

    :cond_2
    move p2, v0

    :goto_0
    if-eq p2, p1, :cond_3

    move p1, p2

    :cond_3
    :goto_1
    return p1
.end method

.method protected final getTarget(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;)Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    .locals 3

    .line 95
    iget-object v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 99
    :cond_0
    iget-object v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 100
    iget-object p1, p1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object p1, p1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mType:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    .line 101
    sget-object v2, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun$1;->$SwitchMap$androidx$constraintlayout$solver$widgets$ConstraintAnchor$Type:[I

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->ordinal()I

    move-result p1

    aget p1, v2, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 119
    :pswitch_0
    iget-object p1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    .line 120
    iget-object v1, p1, Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    goto :goto_0

    .line 115
    :pswitch_1
    iget-object p1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    .line 116
    iget-object v1, p1, Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;->baseline:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    goto :goto_0

    .line 111
    :pswitch_2
    iget-object p1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    .line 112
    iget-object v1, p1, Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    goto :goto_0

    .line 107
    :pswitch_3
    iget-object p1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    .line 108
    iget-object v1, p1, Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    goto :goto_0

    .line 103
    :pswitch_4
    iget-object p1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    .line 104
    iget-object v1, p1, Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    :goto_0
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected final getTarget(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    .locals 2

    .line 258
    iget-object v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 262
    :cond_0
    iget-object v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-nez p2, :cond_1

    .line 263
    iget-object p2, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    goto :goto_0

    :cond_1
    iget-object p2, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    .line 265
    :goto_0
    iget-object p1, p1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object p1, p1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mType:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    .line 266
    sget-object v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun$1;->$SwitchMap$androidx$constraintlayout$solver$widgets$ConstraintAnchor$Type:[I

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_2

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 269
    :pswitch_0
    iget-object v1, p2, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    goto :goto_1

    .line 273
    :cond_2
    :pswitch_1
    iget-object v1, p2, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    :goto_1
    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getWrapDimension()J
    .locals 2

    .line 295
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    iget-boolean v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->resolved:Z

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->value:I

    int-to-long v0, v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public isResolved()Z
    .locals 1

    .line 301
    iget-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->resolved:Z

    return v0
.end method

.method abstract reset()V
.end method

.method abstract supportsWrapComputation()Z
.end method

.method public update(Landroidx/constraintlayout/solver/widgets/analyzer/Dependency;)V
    .locals 0

    return-void
.end method

.method protected updateRunCenter(Landroidx/constraintlayout/solver/widgets/analyzer/Dependency;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V
    .locals 4

    .line 127
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->getTarget(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;)Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    move-result-object p1

    .line 128
    invoke-virtual {p0, p3}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->getTarget(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;)Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    move-result-object v0

    .line 130
    iget-boolean v1, p1, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->resolved:Z

    if-eqz v1, :cond_6

    iget-boolean v1, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->resolved:Z

    if-nez v1, :cond_0

    goto :goto_1

    .line 134
    :cond_0
    iget v1, p1, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->value:I

    invoke-virtual {p2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result p2

    add-int/2addr v1, p2

    .line 135
    iget p2, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->value:I

    invoke-virtual {p3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result p3

    sub-int/2addr p2, p3

    sub-int p3, p2, v1

    .line 138
    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    iget-boolean v2, v2, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->resolved:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->dimensionBehavior:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v2, v3, :cond_1

    .line 140
    invoke-direct {p0, p4, p3}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->resolveDimension(II)V

    .line 143
    :cond_1
    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    iget-boolean v2, v2, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->resolved:Z

    if-nez v2, :cond_2

    return-void

    .line 147
    :cond_2
    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    iget v2, v2, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->value:I

    if-ne v2, p3, :cond_3

    .line 148
    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    invoke-virtual {p1, v1}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->resolve(I)V

    .line 149
    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->resolve(I)V

    return-void

    :cond_3
    if-nez p4, :cond_4

    .line 154
    iget-object p3, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    invoke-virtual {p3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHorizontalBiasPercent()F

    move-result p3

    goto :goto_0

    :cond_4
    iget-object p3, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 155
    invoke-virtual {p3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVerticalBiasPercent()F

    move-result p3

    :goto_0
    const/high16 p4, 0x3f000000    # 0.5f

    if-ne p1, v0, :cond_5

    .line 158
    iget v1, p1, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->value:I

    .line 159
    iget p2, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->value:I

    move p3, p4

    :cond_5
    sub-int/2addr p2, v1

    .line 165
    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    iget p1, p1, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->value:I

    sub-int/2addr p2, p1

    .line 166
    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    int-to-float v0, v1

    add-float/2addr v0, p4

    int-to-float p2, p2

    mul-float/2addr p2, p3

    add-float/2addr v0, p2

    float-to-int p2, v0

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->resolve(I)V

    .line 167
    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget-object p2, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget p2, p2, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->value:I

    iget-object p3, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    iget p3, p3, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->value:I

    add-int/2addr p2, p3

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->resolve(I)V

    return-void

    :cond_6
    :goto_1
    return-void
.end method

.method protected updateRunEnd(Landroidx/constraintlayout/solver/widgets/analyzer/Dependency;)V
    .locals 0

    return-void
.end method

.method protected updateRunStart(Landroidx/constraintlayout/solver/widgets/analyzer/Dependency;)V
    .locals 0

    return-void
.end method
