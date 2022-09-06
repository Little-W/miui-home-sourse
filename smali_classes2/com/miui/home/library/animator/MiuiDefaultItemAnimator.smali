.class public Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;
.super Landroidx/recyclerview/widget/SimpleItemAnimator;
.source "MiuiDefaultItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/library/animator/MiuiDefaultItemAnimator$AddAnimationLister;,
        Lcom/miui/home/library/animator/MiuiDefaultItemAnimator$RemoveLister;,
        Lcom/miui/home/library/animator/MiuiDefaultItemAnimator$ChangeInfo;,
        Lcom/miui/home/library/animator/MiuiDefaultItemAnimator$MoveInfo;
    }
.end annotation


# static fields
.field private static sDefaultInterpolator:Landroid/animation/TimeInterpolator;


# instance fields
.field mAddAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field mAdditionsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;>;"
        }
    .end annotation
.end field

.field mChangesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/library/animator/MiuiDefaultItemAnimator$ChangeInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field mMoveAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field mMovesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/library/animator/MiuiDefaultItemAnimator$MoveInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field mNewChangeAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field mOldChangeAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingAdditions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingChanges:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/library/animator/MiuiDefaultItemAnimator$ChangeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingMoves:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/library/animator/MiuiDefaultItemAnimator$MoveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingRemovals:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field mRemoveAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Landroidx/recyclerview/widget/SimpleItemAnimator;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->mOldChangeAnimations:Ljava/util/ArrayList;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->mNewChangeAnimations:Ljava/util/ArrayList;

    return-void
.end method

.method private cancelAnimate(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x1

    .line 380
    new-array v0, v0, [Landroid/view/View;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IStateStyle;->cancel()V

    .line 381
    invoke-virtual {p0, p1}, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->clearView(Landroid/view/View;)V

    return-void
.end method

.method private endChangeAnimation(Ljava/util/List;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/home/library/animator/MiuiDefaultItemAnimator$ChangeInfo;",
            ">;",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ")V"
        }
    .end annotation

    .line 345
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 346
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator$ChangeInfo;

    .line 347
    invoke-direct {p0, v1, p2}, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->endChangeAnimationIfNecessary(Lcom/miui/home/library/animator/MiuiDefaultItemAnimator$ChangeInfo;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 348
    iget-object v2, v1, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator$ChangeInfo;->oldHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-nez v2, :cond_0

    iget-object v2, v1, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-nez v2, :cond_0

    .line 349
    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private endChangeAnimationIfNecessary(Lcom/miui/home/library/animator/MiuiDefaultItemAnimator$ChangeInfo;)V
    .locals 1

    .line 356
    iget-object v0, p1, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator$ChangeInfo;->oldHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p1, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator$ChangeInfo;->oldHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-direct {p0, p1, v0}, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->endChangeAnimationIfNecessary(Lcom/miui/home/library/animator/MiuiDefaultItemAnimator$ChangeInfo;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    .line 359
    :cond_0
    iget-object v0, p1, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-eqz v0, :cond_1

    .line 360
    iget-object v0, p1, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-direct {p0, p1, v0}, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->endChangeAnimationIfNecessary(Lcom/miui/home/library/animator/MiuiDefaultItemAnimator$ChangeInfo;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    :cond_1
    return-void
.end method

.method private endChangeAnimationIfNecessary(Lcom/miui/home/library/animator/MiuiDefaultItemAnimator$ChangeInfo;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 4

    .line 366
    iget-object v0, p1, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-ne v0, p2, :cond_0

    .line 367
    iput-object v2, p1, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    goto :goto_0

    .line 368
    :cond_0
    iget-object v0, p1, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator$ChangeInfo;->oldHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-ne v0, p2, :cond_1

    .line 369
    iput-object v2, p1, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator$ChangeInfo;->oldHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move v3, v1

    .line 374
    :goto_0
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->resetView(Landroid/view/View;)V

    .line 375
    invoke-virtual {p0, p2, v3}, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->dispatchChangeFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V

    return v1

    :cond_1
    return v3
.end method

.method private resetAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2

    .line 464
    sget-object v0, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->sDefaultInterpolator:Landroid/animation/TimeInterpolator;

    if-nez v0, :cond_0

    .line 465
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v0

    sput-object v0, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->sDefaultInterpolator:Landroid/animation/TimeInterpolator;

    .line 467
    :cond_0
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->sDefaultInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 468
    invoke-virtual {p0, p1}, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->endAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method


# virtual methods
.method public animateAdd(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    .line 187
    invoke-direct {p0, p1}, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->resetAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 188
    invoke-virtual {p0, p1}, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->preAnimateAddImpl(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 189
    iget-object v0, p0, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1
.end method

.method animateAddImpl(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    invoke-virtual {p0, p1}, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->doAnimateAdd(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public animateChange(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)Z
    .locals 14

    move-object v6, p0

    move-object v1, p1

    move-object/from16 v0, p2

    if-ne v1, v0, :cond_0

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    .line 264
    invoke-virtual/range {v0 .. v5}, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->animateMove(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)Z

    move-result v0

    return v0

    .line 266
    :cond_0
    iget-object v2, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationX()F

    move-result v2

    .line 267
    iget-object v3, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTranslationY()F

    move-result v3

    .line 268
    iget-object v4, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getAlpha()F

    move-result v4

    .line 269
    invoke-direct {p0, p1}, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->resetAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    sub-int v5, p5, p3

    int-to-float v5, v5

    sub-float/2addr v5, v2

    float-to-int v5, v5

    sub-int v7, p6, p4

    int-to-float v7, v7

    sub-float/2addr v7, v3

    float-to-int v7, v7

    .line 273
    new-instance v8, Lmiuix/animation/controller/AnimState;

    const-string v9, "prevStart"

    invoke-direct {v8, v9}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v9, Lmiuix/animation/property/ViewProperty;->TRANSLATION_X:Lmiuix/animation/property/ViewProperty;

    float-to-double v10, v2

    .line 274
    invoke-virtual {v8, v9, v10, v11}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v2

    sget-object v8, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    float-to-double v9, v3

    .line 275
    invoke-virtual {v2, v8, v9, v10}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v2

    sget-object v3, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    if-eqz v0, :cond_1

    const-wide/16 v8, 0x0

    goto :goto_0

    :cond_1
    float-to-double v8, v4

    .line 276
    :goto_0
    invoke-virtual {v2, v3, v8, v9}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v2

    const/4 v3, 0x1

    .line 277
    new-array v4, v3, [Landroid/view/View;

    iget-object v8, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v9, 0x0

    aput-object v8, v4, v9

    invoke-static {v4}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v4

    invoke-interface {v4}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v4

    invoke-interface {v4, v2}, Lmiuix/animation/IStateStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    if-eqz v0, :cond_2

    .line 281
    invoke-direct {p0, v0}, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->resetAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 282
    new-instance v2, Lmiuix/animation/controller/AnimState;

    const-string v4, "newStart"

    invoke-direct {v2, v4}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v4, Lmiuix/animation/property/ViewProperty;->TRANSLATION_X:Lmiuix/animation/property/ViewProperty;

    neg-int v5, v5

    int-to-double v10, v5

    .line 283
    invoke-virtual {v2, v4, v10, v11}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v2

    sget-object v4, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    neg-int v5, v7

    int-to-double v7, v5

    .line 284
    invoke-virtual {v2, v4, v7, v8}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v2

    sget-object v4, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    .line 285
    invoke-virtual {v2, v4, v7, v8}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v2

    .line 286
    new-array v4, v3, [Landroid/view/View;

    iget-object v5, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    aput-object v5, v4, v9

    invoke-static {v4}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v4

    invoke-interface {v4}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v4

    invoke-interface {v4, v2}, Lmiuix/animation/IStateStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 288
    :cond_2
    iget-object v2, v6, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    new-instance v4, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator$ChangeInfo;

    move-object v7, v4

    move-object v8, p1

    move-object/from16 v9, p2

    move/from16 v10, p3

    move/from16 v11, p4

    move/from16 v12, p5

    move/from16 v13, p6

    invoke-direct/range {v7 .. v13}, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator$ChangeInfo;-><init>(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return v3
.end method

.method animateChangeImpl(Lcom/miui/home/library/animator/MiuiDefaultItemAnimator$ChangeInfo;)V
    .locals 14

    .line 294
    iget-object v0, p1, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator$ChangeInfo;->oldHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 295
    :cond_0
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 296
    :goto_0
    iget-object v2, p1, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-eqz v2, :cond_1

    .line 297
    iget-object v1, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    :cond_1
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v0, :cond_3

    .line 299
    iget-object v8, p0, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->mOldChangeAnimations:Ljava/util/ArrayList;

    iget-object v9, p1, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator$ChangeInfo;->oldHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 300
    new-instance v8, Lmiuix/animation/controller/AnimState;

    const-string v9, "end"

    invoke-direct {v8, v9}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v9, Lmiuix/animation/property/ViewProperty;->TRANSLATION_X:Lmiuix/animation/property/ViewProperty;

    iget v10, p1, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator$ChangeInfo;->toX:I

    iget v11, p1, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator$ChangeInfo;->fromX:I

    sub-int/2addr v10, v11

    int-to-double v10, v10

    .line 301
    invoke-virtual {v8, v9, v10, v11}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v8

    sget-object v9, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    iget v10, p1, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator$ChangeInfo;->toY:I

    iget v11, p1, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator$ChangeInfo;->fromY:I

    sub-int/2addr v10, v11

    int-to-double v10, v10

    .line 302
    invoke-virtual {v8, v9, v10, v11}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v8

    sget-object v9, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    if-eqz v1, :cond_2

    move-wide v10, v4

    goto :goto_1

    :cond_2
    move-wide v10, v2

    .line 303
    :goto_1
    invoke-virtual {v8, v9, v10, v11}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v8

    .line 304
    new-array v9, v7, [Landroid/view/View;

    aput-object v0, v9, v6

    invoke-static {v9}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v9

    invoke-interface {v9}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v9

    new-array v10, v7, [Lmiuix/animation/base/AnimConfig;

    new-instance v11, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v11}, Lmiuix/animation/base/AnimConfig;-><init>()V

    new-array v12, v7, [Lmiuix/animation/listener/TransitionListener;

    new-instance v13, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator$5;

    invoke-direct {v13, p0, p1, v0}, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator$5;-><init>(Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;Lcom/miui/home/library/animator/MiuiDefaultItemAnimator$ChangeInfo;Landroid/view/View;)V

    aput-object v13, v12, v6

    invoke-virtual {v11, v12}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object v0

    aput-object v0, v10, v6

    invoke-interface {v9, v8, v10}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    :cond_3
    if-eqz v1, :cond_4

    .line 321
    iget-object v0, p0, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->mNewChangeAnimations:Ljava/util/ArrayList;

    iget-object v8, p1, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 322
    new-instance v0, Lmiuix/animation/controller/AnimState;

    const-string v8, "end"

    invoke-direct {v0, v8}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v8, Lmiuix/animation/property/ViewProperty;->TRANSLATION_X:Lmiuix/animation/property/ViewProperty;

    .line 323
    invoke-virtual {v0, v8, v4, v5}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    sget-object v8, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    .line 324
    invoke-virtual {v0, v8, v4, v5}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    sget-object v4, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    .line 325
    invoke-virtual {v0, v4, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    .line 326
    new-array v2, v7, [Landroid/view/View;

    aput-object v1, v2, v6

    invoke-static {v2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v2

    invoke-interface {v2}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v2

    new-array v3, v7, [Lmiuix/animation/base/AnimConfig;

    new-instance v4, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v4}, Lmiuix/animation/base/AnimConfig;-><init>()V

    new-array v5, v7, [Lmiuix/animation/listener/TransitionListener;

    new-instance v7, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator$6;

    invoke-direct {v7, p0, p1, v1}, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator$6;-><init>(Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;Lcom/miui/home/library/animator/MiuiDefaultItemAnimator$ChangeInfo;Landroid/view/View;)V

    aput-object v7, v5, v6

    invoke-virtual {v4, v5}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object p1

    aput-object p1, v3, v6

    invoke-interface {v2, v0, v3}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    :cond_4
    return-void
.end method

.method public animateMove(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)Z
    .locals 7

    .line 214
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    float-to-int v0, v0

    add-int v3, p2, v0

    .line 215
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    move-result p2

    float-to-int p2, p2

    add-int v4, p3, p2

    .line 216
    invoke-direct {p0, p1}, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->resetAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    sub-int p2, p4, v3

    sub-int p3, p5, v4

    const/4 v0, 0x0

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    .line 220
    invoke-virtual {p0, p1}, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->dispatchMoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return v0

    .line 224
    :cond_0
    new-instance v1, Lmiuix/animation/controller/AnimState;

    const-string v2, "start"

    invoke-direct {v1, v2}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v2, Lmiuix/animation/property/ViewProperty;->TRANSLATION_X:Lmiuix/animation/property/ViewProperty;

    neg-int p2, p2

    int-to-double v5, p2

    .line 225
    invoke-virtual {v1, v2, v5, v6}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p2

    sget-object v1, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    neg-int p3, p3

    int-to-double v5, p3

    .line 226
    invoke-virtual {p2, v1, v5, v6}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p2

    const/4 p3, 0x1

    .line 227
    new-array v1, p3, [Landroid/view/View;

    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    aput-object v2, v1, v0

    invoke-static {v1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v0

    invoke-interface {v0, p2}, Lmiuix/animation/IStateStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 229
    iget-object p2, p0, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    new-instance v0, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator$MoveInfo;

    move-object v1, v0

    move-object v2, p1

    move v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator$MoveInfo;-><init>(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return p3
.end method

.method animateMoveImpl(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)V
    .locals 4

    .line 234
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 235
    iget-object p3, p0, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    new-instance p3, Lmiuix/animation/controller/AnimState;

    const-string p4, "end"

    invoke-direct {p3, p4}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object p4, Lmiuix/animation/property/ViewProperty;->TRANSLATION_X:Lmiuix/animation/property/ViewProperty;

    const-wide/16 v0, 0x0

    .line 238
    invoke-virtual {p3, p4, v0, v1}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p3

    sget-object p4, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    .line 239
    invoke-virtual {p3, p4, v0, v1}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p3

    const/4 p4, 0x1

    .line 240
    new-array p5, p4, [Landroid/view/View;

    const/4 v0, 0x0

    aput-object p2, p5, v0

    invoke-static {p5}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p5

    invoke-interface {p5}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object p5

    new-array v1, p4, [Lmiuix/animation/base/AnimConfig;

    new-instance v2, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v2}, Lmiuix/animation/base/AnimConfig;-><init>()V

    new-array p4, p4, [Lmiuix/animation/listener/TransitionListener;

    new-instance v3, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator$4;

    invoke-direct {v3, p0, p1, p2}, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator$4;-><init>(Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroid/view/View;)V

    aput-object v3, p4, v0

    invoke-virtual {v2, p4}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object p1

    aput-object p1, v1, v0

    invoke-interface {p5, p3, v1}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    return-void
.end method

.method public animateRemove(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    .line 164
    invoke-direct {p0, p1}, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->resetAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 165
    iget-object v0, p0, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    invoke-virtual {p0, p1}, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->preAnimateRemoveImpl(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    const/4 p1, 0x1

    return p1
.end method

.method animateRemoveImpl(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    invoke-virtual {p0, p1}, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->doAnimateRemove(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public canReuseUpdatedViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 611
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/SimpleItemAnimator;->canReuseUpdatedViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method cancelAll(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;)V"
        }
    .end annotation

    .line 587
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 588
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->cancelAnimate(Landroid/view/View;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public clearView(Landroid/view/View;)V
    .locals 3

    if-eqz p1, :cond_4

    .line 668
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 669
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 671
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v0

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_1

    .line 672
    invoke-virtual {p1, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 674
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_2

    .line 675
    invoke-virtual {p1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 677
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3

    .line 678
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleX(F)V

    .line 680
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_4

    .line 681
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    :cond_4
    return-void
.end method

.method dispatchFinishedWhenDone()V
    .locals 1

    .line 493
    invoke-virtual {p0}, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 494
    invoke-virtual {p0}, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->dispatchAnimationsFinished()V

    :cond_0
    return-void
.end method

.method protected doAnimateAdd(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 8

    .line 205
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 206
    new-instance v1, Lmiuix/animation/controller/AnimState;

    const-string v2, "end"

    invoke-direct {v1, v2}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v2, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    .line 207
    invoke-virtual {v1, v2, v3, v4}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v1

    const/4 v2, 0x1

    .line 208
    new-array v3, v2, [Landroid/view/View;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v3}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v0

    new-array v3, v2, [Lmiuix/animation/base/AnimConfig;

    new-instance v5, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v5}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const-wide/16 v6, 0x64

    invoke-virtual {v5, v6, v7}, Lmiuix/animation/base/AnimConfig;->setDelay(J)Lmiuix/animation/base/AnimConfig;

    move-result-object v5

    new-array v2, v2, [Lmiuix/animation/listener/TransitionListener;

    new-instance v6, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator$AddAnimationLister;

    invoke-direct {v6, p0, p1}, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator$AddAnimationLister;-><init>(Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    aput-object v6, v2, v4

    invoke-virtual {v5, v2}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object p1

    aput-object p1, v3, v4

    invoke-interface {v0, v1, v3}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    return-void
.end method

.method protected doAnimateRemove(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 7

    .line 179
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 180
    new-instance v1, Lmiuix/animation/controller/AnimState;

    const-string v2, "end"

    invoke-direct {v1, v2}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v2, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    const-wide/16 v3, 0x0

    .line 181
    invoke-virtual {v1, v2, v3, v4}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v1

    const/4 v2, 0x1

    .line 182
    new-array v3, v2, [Landroid/view/View;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v3}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v0

    new-array v3, v2, [Lmiuix/animation/base/AnimConfig;

    new-instance v5, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v5}, Lmiuix/animation/base/AnimConfig;-><init>()V

    new-array v2, v2, [Lmiuix/animation/listener/TransitionListener;

    new-instance v6, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator$RemoveLister;

    invoke-direct {v6, p0, p1}, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator$RemoveLister;-><init>(Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    aput-object v6, v2, v4

    invoke-virtual {v5, v2}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object p1

    aput-object p1, v3, v4

    invoke-interface {v0, v1, v3}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    return-void
.end method

.method public endAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 5

    .line 386
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 387
    invoke-direct {p0, v0}, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->cancelAnimate(Landroid/view/View;)V

    .line 390
    iget-object v0, p0, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    .line 391
    iget-object v2, p0, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator$MoveInfo;

    .line 392
    iget-object v2, v2, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator$MoveInfo;->holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-ne v2, p1, :cond_0

    .line 393
    invoke-virtual {p0, p1}, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->dispatchMoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 394
    iget-object v2, p0, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 397
    :cond_1
    iget-object v0, p0, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->endChangeAnimation(Ljava/util/List;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 398
    iget-object v0, p0, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 399
    invoke-virtual {p0, p1}, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->dispatchRemoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 401
    :cond_2
    iget-object v0, p0, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 402
    invoke-virtual {p0, p1}, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->dispatchAddFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 405
    :cond_3
    iget-object v0, p0, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_1
    if-ltz v0, :cond_5

    .line 406
    iget-object v2, p0, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 407
    invoke-direct {p0, v2, p1}, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->endChangeAnimation(Ljava/util/List;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 408
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 409
    iget-object v2, p0, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 412
    :cond_5
    iget-object v0, p0, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_2
    if-ltz v0, :cond_8

    .line 413
    iget-object v2, p0, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 414
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v1

    :goto_3
    if-ltz v3, :cond_7

    .line 415
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator$MoveInfo;

    .line 416
    iget-object v4, v4, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator$MoveInfo;->holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-ne v4, p1, :cond_6

    .line 417
    invoke-virtual {p0, p1}, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->dispatchMoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 418
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 419
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 420
    iget-object v2, p0, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_4

    :cond_6
    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    :cond_7
    :goto_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 426
    :cond_8
    iget-object v0, p0, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_5
    if-ltz v0, :cond_a

    .line 427
    iget-object v2, p0, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 428
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 429
    invoke-virtual {p0, p1}, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->dispatchAddFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 430
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 431
    iget-object v2, p0, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_9
    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    .line 436
    :cond_a
    iget-object v0, p0, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 437
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->resetView(Landroid/view/View;)V

    .line 438
    invoke-virtual {p0, p1}, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->dispatchRemoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 441
    :cond_b
    iget-object v0, p0, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 442
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->resetView(Landroid/view/View;)V

    .line 443
    invoke-virtual {p0, p1}, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->dispatchAddFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 446
    :cond_c
    iget-object v0, p0, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->mOldChangeAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 447
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->resetView(Landroid/view/View;)V

    .line 448
    invoke-virtual {p0, p1, v1}, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->dispatchChangeFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V

    .line 451
    :cond_d
    iget-object v0, p0, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->mNewChangeAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 452
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->resetView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 453
    invoke-virtual {p0, p1, v0}, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->dispatchChangeFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V

    .line 456
    :cond_e
    iget-object v0, p0, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 457
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->resetView(Landroid/view/View;)V

    .line 458
    invoke-virtual {p0, p1}, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->dispatchMoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 460
    :cond_f
    invoke-virtual {p0}, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->dispatchFinishedWhenDone()V

    return-void
.end method

.method public endAnimations()V
    .locals 5

    .line 500
    iget-object v0, p0, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 502
    iget-object v1, p0, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator$MoveInfo;

    .line 503
    iget-object v2, v1, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator$MoveInfo;->holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 504
    invoke-direct {p0, v2}, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->cancelAnimate(Landroid/view/View;)V

    .line 505
    invoke-virtual {p0, v2}, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->resetView(Landroid/view/View;)V

    .line 506
    iget-object v1, v1, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator$MoveInfo;->holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p0, v1}, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->dispatchMoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 507
    iget-object v1, p0, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 509
    :cond_0
    iget-object v0, p0, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_1

    .line 511
    iget-object v1, p0, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 512
    invoke-virtual {p0, v1}, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->dispatchRemoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 513
    iget-object v1, p0, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 515
    :cond_1
    iget-object v0, p0, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_2
    if-ltz v0, :cond_2

    .line 517
    iget-object v1, p0, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 518
    iget-object v2, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-direct {p0, v2}, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->cancelAnimate(Landroid/view/View;)V

    .line 519
    iget-object v2, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->resetView(Landroid/view/View;)V

    .line 520
    invoke-virtual {p0, v1}, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->dispatchAddFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 521
    iget-object v1, p0, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 523
    :cond_2
    iget-object v0, p0, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_3
    if-ltz v0, :cond_3

    .line 525
    iget-object v1, p0, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator$ChangeInfo;

    invoke-direct {p0, v1}, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->endChangeAnimationIfNecessary(Lcom/miui/home/library/animator/MiuiDefaultItemAnimator$ChangeInfo;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 527
    :cond_3
    iget-object v0, p0, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 528
    invoke-virtual {p0}, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_4

    return-void

    .line 532
    :cond_4
    iget-object v0, p0, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_4
    if-ltz v0, :cond_7

    .line 534
    iget-object v1, p0, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 535
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_5
    if-ltz v2, :cond_6

    .line 537
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator$MoveInfo;

    .line 538
    iget-object v4, v3, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator$MoveInfo;->holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 539
    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 540
    invoke-direct {p0, v4}, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->cancelAnimate(Landroid/view/View;)V

    .line 541
    invoke-virtual {p0, v4}, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->resetView(Landroid/view/View;)V

    .line 542
    iget-object v3, v3, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator$MoveInfo;->holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p0, v3}, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->dispatchMoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 543
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 544
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 545
    iget-object v3, p0, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v2, v2, -0x1

    goto :goto_5

    :cond_6
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 549
    :cond_7
    iget-object v0, p0, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_a

    .line 551
    iget-object v1, p0, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 552
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_7
    if-ltz v2, :cond_9

    .line 554
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 555
    iget-object v4, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 556
    invoke-direct {p0, v4}, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->cancelAnimate(Landroid/view/View;)V

    .line 557
    invoke-virtual {p0, v4}, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->resetView(Landroid/view/View;)V

    .line 558
    invoke-virtual {p0, v3}, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->dispatchAddFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 559
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 560
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 561
    iget-object v3, p0, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_8
    add-int/lit8 v2, v2, -0x1

    goto :goto_7

    :cond_9
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 565
    :cond_a
    iget-object v0, p0, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_d

    .line 567
    iget-object v1, p0, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 568
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_9
    if-ltz v2, :cond_c

    .line 570
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator$ChangeInfo;

    invoke-direct {p0, v3}, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->endChangeAnimationIfNecessary(Lcom/miui/home/library/animator/MiuiDefaultItemAnimator$ChangeInfo;)V

    .line 571
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 572
    iget-object v3, p0, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_b
    add-int/lit8 v2, v2, -0x1

    goto :goto_9

    :cond_c
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 577
    :cond_d
    iget-object v0, p0, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->cancelAll(Ljava/util/List;)V

    .line 578
    iget-object v0, p0, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->cancelAll(Ljava/util/List;)V

    .line 579
    iget-object v0, p0, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->cancelAll(Ljava/util/List;)V

    .line 580
    iget-object v0, p0, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->mOldChangeAnimations:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->cancelAll(Ljava/util/List;)V

    .line 581
    iget-object v0, p0, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->mNewChangeAnimations:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->cancelAll(Ljava/util/List;)V

    .line 583
    invoke-virtual {p0}, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->dispatchAnimationsFinished()V

    return-void
.end method

.method public isRunning()Z
    .locals 1

    .line 473
    iget-object v0, p0, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    .line 474
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    .line 475
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    .line 476
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    .line 477
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    .line 478
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    .line 479
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->mOldChangeAnimations:Ljava/util/ArrayList;

    .line 480
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->mNewChangeAnimations:Ljava/util/ArrayList;

    .line 481
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    .line 482
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    .line 483
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    .line 484
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected preAnimateAddImpl(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 4

    .line 194
    new-instance v0, Lmiuix/animation/controller/AnimState;

    const-string v1, "start"

    invoke-direct {v0, v1}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v1, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    const-wide/16 v2, 0x0

    .line 195
    invoke-virtual {v0, v1, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    const/4 v1, 0x1

    .line 196
    new-array v1, v1, [Landroid/view/View;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object p1

    invoke-interface {p1, v0}, Lmiuix/animation/IStateStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    return-void
.end method

.method protected preAnimateRemoveImpl(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    return-void
.end method

.method public resetView(Landroid/view/View;)V
    .locals 4

    .line 615
    new-instance v0, Lmiuix/animation/controller/AnimState;

    const-string v1, "reset"

    invoke-direct {v0, v1}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v1, Lmiuix/animation/property/ViewProperty;->TRANSLATION_X:Lmiuix/animation/property/ViewProperty;

    const-wide/16 v2, 0x0

    .line 616
    invoke-virtual {v0, v1, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    sget-object v1, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    .line 617
    invoke-virtual {v0, v1, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    sget-object v1, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 618
    invoke-virtual {v0, v1, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    sget-object v1, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    .line 619
    invoke-virtual {v0, v1, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    sget-object v1, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    .line 620
    invoke-virtual {v0, v1, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    const/4 v1, 0x1

    .line 621
    new-array v1, v1, [Landroid/view/View;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object p1

    invoke-interface {p1, v0}, Lmiuix/animation/IStateStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    return-void
.end method

.method public runPendingAnimations()V
    .locals 5

    .line 92
    iget-object v0, p0, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 93
    iget-object v1, p0, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 94
    iget-object v2, p0, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 95
    iget-object v3, p0, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    if-nez v3, :cond_0

    if-nez v2, :cond_0

    return-void

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 102
    invoke-virtual {p0, v4}, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->animateRemoveImpl(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    goto :goto_0

    .line 104
    :cond_1
    iget-object v0, p0, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    if-eqz v1, :cond_2

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 108
    iget-object v1, p0, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 109
    iget-object v1, p0, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    iget-object v1, p0, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 111
    new-instance v1, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator$1;

    invoke-direct {v1, p0, v0}, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator$1;-><init>(Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;Ljava/util/ArrayList;)V

    .line 122
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :cond_2
    if-eqz v2, :cond_3

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 127
    iget-object v1, p0, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 128
    iget-object v1, p0, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    iget-object v1, p0, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 130
    new-instance v1, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator$2;

    invoke-direct {v1, p0, v0}, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator$2;-><init>(Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;Ljava/util/ArrayList;)V

    .line 140
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :cond_3
    if-eqz v3, :cond_4

    .line 144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 145
    iget-object v1, p0, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 146
    iget-object v1, p0, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    iget-object v1, p0, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 148
    new-instance v1, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator$3;

    invoke-direct {v1, p0, v0}, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator$3;-><init>(Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;Ljava/util/ArrayList;)V

    .line 158
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :cond_4
    return-void
.end method
