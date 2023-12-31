.class public abstract Landroidx/recyclerview/widget/SpringRecyclerView;
.super Landroidx/recyclerview/widget/RemixRecyclerView;
.source "SpringRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/SpringRecyclerView$NonEdgeEffect;,
        Landroidx/recyclerview/widget/SpringRecyclerView$NonEdgeEffectFactory;,
        Landroidx/recyclerview/widget/SpringRecyclerView$SpringNestedScrollingHelper;,
        Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;
    }
.end annotation


# static fields
.field private static final NESTED_SCROLL_HELPER:Ljava/lang/reflect/Field;

.field private static final NON_EFFECT_FACTORY:Landroidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;

.field private static final VIEW_FLINGER:Ljava/lang/reflect/Field;


# instance fields
.field private mHorizontalOverScrolling:Z

.field private mManagedScrollState:I

.field private mSpringFlinger:Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;

.field private mSpringHelper:Lmiuix/spring/view/SpringHelper;

.field private mSpringNestedScrollingHelper:Landroidx/recyclerview/widget/SpringRecyclerView$SpringNestedScrollingHelper;

.field private mVerticalOverScrolling:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 277
    :try_start_0
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const-string v1, "mViewFlinger"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroidx/recyclerview/widget/SpringRecyclerView;->VIEW_FLINGER:Ljava/lang/reflect/Field;

    .line 278
    sget-object v0, Landroidx/recyclerview/widget/SpringRecyclerView;->VIEW_FLINGER:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1

    .line 283
    :try_start_1
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const-string v2, "mScrollingChildHelper"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroidx/recyclerview/widget/SpringRecyclerView;->NESTED_SCROLL_HELPER:Ljava/lang/reflect/Field;

    .line 284
    sget-object v0, Landroidx/recyclerview/widget/SpringRecyclerView;->NESTED_SCROLL_HELPER:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_0

    .line 308
    new-instance v0, Landroidx/recyclerview/widget/SpringRecyclerView$NonEdgeEffectFactory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/SpringRecyclerView$NonEdgeEffectFactory;-><init>(Landroidx/recyclerview/widget/SpringRecyclerView$1;)V

    sput-object v0, Landroidx/recyclerview/widget/SpringRecyclerView;->NON_EFFECT_FACTORY:Landroidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;

    return-void

    :catch_0
    move-exception v0

    .line 286
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    .line 280
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1, v0}, Landroidx/recyclerview/widget/SpringRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 35
    sget v0, Landroidx/recyclerview/R$attr;->recyclerViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroidx/recyclerview/widget/SpringRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RemixRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 28
    iput p1, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->mManagedScrollState:I

    .line 210
    new-instance p2, Landroidx/recyclerview/widget/SpringRecyclerView$1;

    invoke-direct {p2, p0}, Landroidx/recyclerview/widget/SpringRecyclerView$1;-><init>(Landroidx/recyclerview/widget/SpringRecyclerView;)V

    iput-object p2, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->mSpringHelper:Lmiuix/spring/view/SpringHelper;

    .line 40
    new-instance p2, Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;-><init>(Landroidx/recyclerview/widget/SpringRecyclerView;Landroidx/recyclerview/widget/SpringRecyclerView$1;)V

    iput-object p2, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->mSpringFlinger:Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;

    .line 41
    new-instance p2, Landroidx/recyclerview/widget/SpringRecyclerView$SpringNestedScrollingHelper;

    invoke-direct {p2, p0, p0}, Landroidx/recyclerview/widget/SpringRecyclerView$SpringNestedScrollingHelper;-><init>(Landroidx/recyclerview/widget/SpringRecyclerView;Landroid/view/View;)V

    iput-object p2, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->mSpringNestedScrollingHelper:Landroidx/recyclerview/widget/SpringRecyclerView$SpringNestedScrollingHelper;

    .line 42
    iget-object p2, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->mSpringFlinger:Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/SpringRecyclerView;->replaceViewFlinger(Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;)V

    .line 43
    iget-object p2, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->mSpringNestedScrollingHelper:Landroidx/recyclerview/widget/SpringRecyclerView$SpringNestedScrollingHelper;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/SpringRecyclerView;->replaceNestedScrollingHelper(Landroidx/core/view/NestedScrollingChildHelper;)V

    .line 44
    sget-object p2, Landroidx/recyclerview/widget/SpringRecyclerView;->NON_EFFECT_FACTORY:Landroidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;

    invoke-super {p0, p2}, Landroidx/recyclerview/widget/RemixRecyclerView;->setEdgeEffectFactory(Landroidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;)V

    .line 45
    sget-boolean p2, Lmiuix/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz p2, :cond_0

    .line 46
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/SpringRecyclerView;->setSpringEnabled(Z)V

    :cond_0
    return-void
.end method

.method static synthetic access$100(Landroidx/recyclerview/widget/SpringRecyclerView;)Lmiuix/spring/view/SpringHelper;
    .locals 0

    .line 20
    iget-object p0, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->mSpringHelper:Lmiuix/spring/view/SpringHelper;

    return-object p0
.end method

.method static synthetic access$200(Landroidx/recyclerview/widget/SpringRecyclerView;)Z
    .locals 0

    .line 20
    invoke-direct {p0}, Landroidx/recyclerview/widget/SpringRecyclerView;->springAvailable()Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Landroidx/recyclerview/widget/SpringRecyclerView;)Z
    .locals 0

    .line 20
    iget-boolean p0, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->mHorizontalOverScrolling:Z

    return p0
.end method

.method static synthetic access$302(Landroidx/recyclerview/widget/SpringRecyclerView;Z)Z
    .locals 0

    .line 20
    iput-boolean p1, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->mHorizontalOverScrolling:Z

    return p1
.end method

.method static synthetic access$400(Landroidx/recyclerview/widget/SpringRecyclerView;)Z
    .locals 0

    .line 20
    iget-boolean p0, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->mVerticalOverScrolling:Z

    return p0
.end method

.method static synthetic access$402(Landroidx/recyclerview/widget/SpringRecyclerView;Z)Z
    .locals 0

    .line 20
    iput-boolean p1, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->mVerticalOverScrolling:Z

    return p1
.end method

.method static synthetic access$500(Landroidx/recyclerview/widget/SpringRecyclerView;)Landroidx/recyclerview/widget/SpringRecyclerView$SpringNestedScrollingHelper;
    .locals 0

    .line 20
    iget-object p0, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->mSpringNestedScrollingHelper:Landroidx/recyclerview/widget/SpringRecyclerView$SpringNestedScrollingHelper;

    return-object p0
.end method

.method static synthetic access$600(Landroidx/recyclerview/widget/SpringRecyclerView;)I
    .locals 0

    .line 20
    iget p0, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->mManagedScrollState:I

    return p0
.end method

.method static synthetic access$700(Landroidx/recyclerview/widget/SpringRecyclerView;)Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;
    .locals 0

    .line 20
    iget-object p0, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->mSpringFlinger:Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;

    return-object p0
.end method

.method private replaceNestedScrollingHelper(Landroidx/core/view/NestedScrollingChildHelper;)V
    .locals 1

    .line 292
    :try_start_0
    sget-object v0, Landroidx/recyclerview/widget/SpringRecyclerView;->NESTED_SCROLL_HELPER:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 294
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private replaceViewFlinger(Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;)V
    .locals 1

    .line 300
    :try_start_0
    sget-object v0, Landroidx/recyclerview/widget/SpringRecyclerView;->VIEW_FLINGER:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 302
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private springAvailable()Z
    .locals 2

    .line 93
    invoke-virtual {p0}, Landroidx/recyclerview/widget/SpringRecyclerView;->getOverScrollMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/SpringRecyclerView;->getSpringEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 52
    iget-object v0, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->mSpringHelper:Lmiuix/spring/view/SpringHelper;

    invoke-virtual {v0}, Lmiuix/spring/view/SpringHelper;->getHorizontalDistance()I

    move-result v0

    .line 53
    iget-object v1, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->mSpringHelper:Lmiuix/spring/view/SpringHelper;

    invoke-virtual {v1}, Lmiuix/spring/view/SpringHelper;->getVerticalDistance()I

    move-result v1

    if-nez v0, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 60
    :cond_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RemixRecyclerView;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 55
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    neg-int v0, v0

    int-to-float v0, v0

    neg-int v1, v1

    int-to-float v1, v1

    .line 56
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 57
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RemixRecyclerView;->draw(Landroid/graphics/Canvas;)V

    .line 58
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :goto_1
    return-void
.end method

.method public bridge synthetic getSpringEnabled()Z
    .locals 0

    .line 20
    invoke-super {p0}, Landroidx/recyclerview/widget/RemixRecyclerView;->getSpringEnabled()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 20
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RemixRecyclerView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onScrollStateChanged(I)V
    .locals 1

    .line 79
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RemixRecyclerView;->onScrollStateChanged(I)V

    .line 80
    iput p1, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->mManagedScrollState:I

    .line 81
    invoke-direct {p0}, Landroidx/recyclerview/widget/SpringRecyclerView;->springAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    .line 85
    iget-boolean p1, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->mHorizontalOverScrolling:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->mVerticalOverScrolling:Z

    if-eqz p1, :cond_2

    .line 86
    :cond_1
    iget-object p1, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->mSpringFlinger:Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;->stop()V

    const/4 p1, 0x0

    .line 87
    iput-boolean p1, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->mHorizontalOverScrolling:Z

    .line 88
    iput-boolean p1, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->mVerticalOverScrolling:Z

    :cond_2
    return-void
.end method

.method public bridge synthetic onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 20
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RemixRecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic setOverScrollMode(I)V
    .locals 0

    .line 20
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RemixRecyclerView;->setOverScrollMode(I)V

    return-void
.end method

.method setScrollState(I)V
    .locals 2

    .line 66
    iget v0, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->mManagedScrollState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    if-nez p1, :cond_1

    .line 67
    iget-object v0, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->mSpringHelper:Lmiuix/spring/view/SpringHelper;

    invoke-virtual {v0}, Lmiuix/spring/view/SpringHelper;->getHorizontalDistance()I

    move-result v0

    .line 68
    iget-object v1, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->mSpringHelper:Lmiuix/spring/view/SpringHelper;

    invoke-virtual {v1}, Lmiuix/spring/view/SpringHelper;->getVerticalDistance()I

    move-result v1

    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    .line 70
    :cond_0
    iget-object p0, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->mSpringFlinger:Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;

    invoke-virtual {p0, v0, v1}, Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;->springBack(II)V

    return-void

    .line 74
    :cond_1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RemixRecyclerView;->setScrollState(I)V

    return-void
.end method

.method public bridge synthetic setSpringEnabled(Z)V
    .locals 0

    .line 20
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RemixRecyclerView;->setSpringEnabled(Z)V

    return-void
.end method
