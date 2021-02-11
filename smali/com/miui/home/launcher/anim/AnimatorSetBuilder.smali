.class public Lcom/miui/home/launcher/anim/AnimatorSetBuilder;
.super Ljava/lang/Object;
.source "AnimatorSetBuilder.java"


# instance fields
.field protected final mAnims:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private final mInterpolators:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/animation/Interpolator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/anim/AnimatorSetBuilder;->mAnims:Ljava/util/ArrayList;

    .line 38
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/anim/AnimatorSetBuilder;->mInterpolators:Landroid/util/SparseArray;

    return-void
.end method

.method public static blockedFlingDurationFactor(F)I
    .locals 2

    .line 59
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p0, v0

    const/high16 v1, 0x40c00000    # 6.0f

    invoke-static {p0, v1}, Ljava/lang/Math;->min(FF)F

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method


# virtual methods
.method public build()Landroid/animation/AnimatorSet;
    .locals 2

    .line 45
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 46
    iget-object v1, p0, Lcom/miui/home/launcher/anim/AnimatorSetBuilder;->mAnims:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getInterpolator(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/miui/home/launcher/anim/AnimatorSetBuilder;->mInterpolators:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/animation/Interpolator;

    return-object p1
.end method

.method public play(Landroid/animation/Animator;)V
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/miui/home/launcher/anim/AnimatorSetBuilder;->mAnims:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setInterpolator(ILandroid/view/animation/Interpolator;)V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/miui/home/launcher/anim/AnimatorSetBuilder;->mInterpolators:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method
