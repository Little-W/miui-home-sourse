.class public Lcom/miui/home/launcher/view/SpringRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "SpringRelativeLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/view/SpringRelativeLayout$SpringEdgeEffect;,
        Lcom/miui/home/launcher/view/SpringRelativeLayout$SpringEdgeEffectFactory;
    }
.end annotation


# static fields
.field private static final DAMPED_SCROLL:Landroidx/dynamicanimation/animation/FloatPropertyCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "Lcom/miui/home/launcher/view/SpringRelativeLayout;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mActiveEdge:Lcom/miui/home/launcher/view/SpringRelativeLayout$SpringEdgeEffect;

.field private mDampedScrollShift:F

.field private final mSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

.field protected final mSpringViews:Landroid/util/SparseBooleanArray;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 43
    new-instance v0, Lcom/miui/home/launcher/view/SpringRelativeLayout$1;

    const-string v1, "value"

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/view/SpringRelativeLayout$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/miui/home/launcher/view/SpringRelativeLayout;->DAMPED_SCROLL:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 64
    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/view/SpringRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 68
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/view/SpringRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 72
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/view/SpringRelativeLayout;->mSpringViews:Landroid/util/SparseBooleanArray;

    const/4 p1, 0x0

    .line 60
    iput p1, p0, Lcom/miui/home/launcher/view/SpringRelativeLayout;->mDampedScrollShift:F

    .line 73
    new-instance p2, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object p3, Lcom/miui/home/launcher/view/SpringRelativeLayout;->DAMPED_SCROLL:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    invoke-direct {p2, p0, p3, p1}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;F)V

    iput-object p2, p0, Lcom/miui/home/launcher/view/SpringRelativeLayout;->mSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 74
    iget-object p2, p0, Lcom/miui/home/launcher/view/SpringRelativeLayout;->mSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance p3, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {p3, p1}, Landroidx/dynamicanimation/animation/SpringForce;-><init>(F)V

    const p1, 0x44548000    # 850.0f

    .line 75
    invoke-virtual {p3, p1}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p1

    const/high16 p3, 0x3f000000    # 0.5f

    .line 76
    invoke-virtual {p1, p3}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p1

    .line 74
    invoke-virtual {p2, p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/view/SpringRelativeLayout;)F
    .locals 0

    .line 37
    iget p0, p0, Lcom/miui/home/launcher/view/SpringRelativeLayout;->mDampedScrollShift:F

    return p0
.end method

.method static synthetic access$300(Lcom/miui/home/launcher/view/SpringRelativeLayout;F)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/view/SpringRelativeLayout;->finishScrollWithVelocity(F)V

    return-void
.end method

.method static synthetic access$400(Lcom/miui/home/launcher/view/SpringRelativeLayout;Lcom/miui/home/launcher/view/SpringRelativeLayout$SpringEdgeEffect;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/view/SpringRelativeLayout;->setActiveEdge(Lcom/miui/home/launcher/view/SpringRelativeLayout$SpringEdgeEffect;)V

    return-void
.end method

.method private finishScrollWithVelocity(F)V
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/miui/home/launcher/view/SpringRelativeLayout;->mSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0, p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->setStartVelocity(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 127
    iget-object p1, p0, Lcom/miui/home/launcher/view/SpringRelativeLayout;->mSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget v0, p0, Lcom/miui/home/launcher/view/SpringRelativeLayout;->mDampedScrollShift:F

    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->setStartValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 128
    iget-object p1, p0, Lcom/miui/home/launcher/view/SpringRelativeLayout;->mSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    return-void
.end method

.method private setActiveEdge(Lcom/miui/home/launcher/view/SpringRelativeLayout$SpringEdgeEffect;)V
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/miui/home/launcher/view/SpringRelativeLayout;->mActiveEdge:Lcom/miui/home/launcher/view/SpringRelativeLayout$SpringEdgeEffect;

    if-eq v0, p1, :cond_0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 113
    invoke-static {v0, v1}, Lcom/miui/home/launcher/view/SpringRelativeLayout$SpringEdgeEffect;->access$102(Lcom/miui/home/launcher/view/SpringRelativeLayout$SpringEdgeEffect;F)F

    .line 115
    :cond_0
    iput-object p1, p0, Lcom/miui/home/launcher/view/SpringRelativeLayout;->mActiveEdge:Lcom/miui/home/launcher/view/SpringRelativeLayout$SpringEdgeEffect;

    return-void
.end method


# virtual methods
.method public addSpringView(I)V
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/miui/home/launcher/view/SpringRelativeLayout;->mSpringViews:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    return-void
.end method

.method public createEdgeEffectFactory()Landroidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;
    .locals 2

    .line 139
    new-instance v0, Lcom/miui/home/launcher/view/SpringRelativeLayout$SpringEdgeEffectFactory;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/home/launcher/view/SpringRelativeLayout$SpringEdgeEffectFactory;-><init>(Lcom/miui/home/launcher/view/SpringRelativeLayout;Lcom/miui/home/launcher/view/SpringRelativeLayout$1;)V

    return-object v0
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 6

    .line 97
    iget v0, p0, Lcom/miui/home/launcher/view/SpringRelativeLayout;->mDampedScrollShift:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/view/SpringRelativeLayout;->mSpringViews:Landroid/util/SparseBooleanArray;

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    const/4 v2, 0x0

    .line 100
    invoke-virtual {p0}, Lcom/miui/home/launcher/view/SpringRelativeLayout;->getCanvasClipTopForOverscroll()I

    move-result v3

    invoke-virtual {p0}, Lcom/miui/home/launcher/view/SpringRelativeLayout;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/miui/home/launcher/view/SpringRelativeLayout;->getHeight()I

    move-result v5

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 101
    iget v2, p0, Lcom/miui/home/launcher/view/SpringRelativeLayout;->mDampedScrollShift:F

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 102
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p2

    .line 104
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return p2

    .line 108
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1
.end method

.method public getCanvasClipTopForOverscroll()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected setDampedScrollShift(F)V
    .locals 1

    .line 119
    iget v0, p0, Lcom/miui/home/launcher/view/SpringRelativeLayout;->mDampedScrollShift:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 120
    iput p1, p0, Lcom/miui/home/launcher/view/SpringRelativeLayout;->mDampedScrollShift:F

    .line 121
    invoke-virtual {p0}, Lcom/miui/home/launcher/view/SpringRelativeLayout;->invalidate()V

    :cond_0
    return-void
.end method
