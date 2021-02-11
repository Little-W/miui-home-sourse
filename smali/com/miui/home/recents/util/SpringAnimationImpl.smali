.class public Lcom/miui/home/recents/util/SpringAnimationImpl;
.super Ljava/lang/Object;
.source "SpringAnimationImpl.java"


# instance fields
.field mAllSpringAnim:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/dynamicanimation/animation/SpringAnimation;",
            ">;"
        }
    .end annotation
.end field

.field mAlphaSpringAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

.field mScaleXSpringAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

.field mScaleYSpringAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

.field mTargetView:Landroid/view/View;

.field mTransXSpringAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

.field mTransYSpringAnim:Landroidx/dynamicanimation/animation/SpringAnimation;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/miui/home/recents/util/SpringAnimationImpl;->mTargetView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public getAllSpringAnim()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/dynamicanimation/animation/SpringAnimation;",
            ">;"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/miui/home/recents/util/SpringAnimationImpl;->mAllSpringAnim:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/util/SpringAnimationImpl;->mAllSpringAnim:Ljava/util/List;

    .line 64
    iget-object v0, p0, Lcom/miui/home/recents/util/SpringAnimationImpl;->mAllSpringAnim:Ljava/util/List;

    invoke-virtual {p0}, Lcom/miui/home/recents/util/SpringAnimationImpl;->getTranslationXSpringAnim()Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    iget-object v0, p0, Lcom/miui/home/recents/util/SpringAnimationImpl;->mAllSpringAnim:Ljava/util/List;

    invoke-virtual {p0}, Lcom/miui/home/recents/util/SpringAnimationImpl;->getTranslationYSpringAnim()Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    iget-object v0, p0, Lcom/miui/home/recents/util/SpringAnimationImpl;->mAllSpringAnim:Ljava/util/List;

    invoke-virtual {p0}, Lcom/miui/home/recents/util/SpringAnimationImpl;->getScaleXSpringAnim()Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    iget-object v0, p0, Lcom/miui/home/recents/util/SpringAnimationImpl;->mAllSpringAnim:Ljava/util/List;

    invoke-virtual {p0}, Lcom/miui/home/recents/util/SpringAnimationImpl;->getScaleYSpringAnim()Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    iget-object v0, p0, Lcom/miui/home/recents/util/SpringAnimationImpl;->mAllSpringAnim:Ljava/util/List;

    invoke-virtual {p0}, Lcom/miui/home/recents/util/SpringAnimationImpl;->getAlphaSpringAnim()Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    :cond_1
    iget-object v0, p0, Lcom/miui/home/recents/util/SpringAnimationImpl;->mAllSpringAnim:Ljava/util/List;

    return-object v0
.end method

.method public getAlphaSpringAnim()Landroidx/dynamicanimation/animation/SpringAnimation;
    .locals 4

    .line 55
    iget-object v0, p0, Lcom/miui/home/recents/util/SpringAnimationImpl;->mAlphaSpringAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-nez v0, :cond_0

    .line 56
    invoke-static {}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getInstance()Lcom/miui/home/recents/util/SpringAnimationUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/util/SpringAnimationImpl;->mTargetView:Landroid/view/View;

    sget-object v2, Landroidx/dynamicanimation/animation/SpringAnimation;->ALPHA:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/home/recents/util/SpringAnimationUtils;->createDefaultSpringAnim(Landroid/view/View;Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;F)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/util/SpringAnimationImpl;->mAlphaSpringAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/util/SpringAnimationImpl;->mAlphaSpringAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    return-object v0
.end method

.method public getScaleXSpringAnim()Landroidx/dynamicanimation/animation/SpringAnimation;
    .locals 4

    .line 39
    iget-object v0, p0, Lcom/miui/home/recents/util/SpringAnimationImpl;->mScaleXSpringAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-nez v0, :cond_0

    .line 40
    invoke-static {}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getInstance()Lcom/miui/home/recents/util/SpringAnimationUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/util/SpringAnimationImpl;->mTargetView:Landroid/view/View;

    sget-object v2, Landroidx/dynamicanimation/animation/SpringAnimation;->SCALE_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/home/recents/util/SpringAnimationUtils;->createDefaultSpringAnim(Landroid/view/View;Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;F)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/util/SpringAnimationImpl;->mScaleXSpringAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 41
    iget-object v0, p0, Lcom/miui/home/recents/util/SpringAnimationImpl;->mScaleXSpringAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    const v1, 0x3b03126f    # 0.002f

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->setMinimumVisibleChange(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/util/SpringAnimationImpl;->mScaleXSpringAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    return-object v0
.end method

.method public getScaleYSpringAnim()Landroidx/dynamicanimation/animation/SpringAnimation;
    .locals 4

    .line 47
    iget-object v0, p0, Lcom/miui/home/recents/util/SpringAnimationImpl;->mScaleYSpringAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-nez v0, :cond_0

    .line 48
    invoke-static {}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getInstance()Lcom/miui/home/recents/util/SpringAnimationUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/util/SpringAnimationImpl;->mTargetView:Landroid/view/View;

    sget-object v2, Landroidx/dynamicanimation/animation/SpringAnimation;->SCALE_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/home/recents/util/SpringAnimationUtils;->createDefaultSpringAnim(Landroid/view/View;Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;F)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/util/SpringAnimationImpl;->mScaleYSpringAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 49
    iget-object v0, p0, Lcom/miui/home/recents/util/SpringAnimationImpl;->mScaleYSpringAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    const v1, 0x3b03126f    # 0.002f

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->setMinimumVisibleChange(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/util/SpringAnimationImpl;->mScaleYSpringAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    return-object v0
.end method

.method public getTargetView()Landroid/view/View;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/miui/home/recents/util/SpringAnimationImpl;->mTargetView:Landroid/view/View;

    return-object v0
.end method

.method public getTranslationXSpringAnim()Landroidx/dynamicanimation/animation/SpringAnimation;
    .locals 4

    .line 25
    iget-object v0, p0, Lcom/miui/home/recents/util/SpringAnimationImpl;->mTransXSpringAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-nez v0, :cond_0

    .line 26
    invoke-static {}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getInstance()Lcom/miui/home/recents/util/SpringAnimationUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/util/SpringAnimationImpl;->mTargetView:Landroid/view/View;

    sget-object v2, Landroidx/dynamicanimation/animation/SpringAnimation;->TRANSLATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/home/recents/util/SpringAnimationUtils;->createDefaultSpringAnim(Landroid/view/View;Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;F)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/util/SpringAnimationImpl;->mTransXSpringAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/util/SpringAnimationImpl;->mTransXSpringAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    return-object v0
.end method

.method public getTranslationYSpringAnim()Landroidx/dynamicanimation/animation/SpringAnimation;
    .locals 4

    .line 32
    iget-object v0, p0, Lcom/miui/home/recents/util/SpringAnimationImpl;->mTransYSpringAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-nez v0, :cond_0

    .line 33
    invoke-static {}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getInstance()Lcom/miui/home/recents/util/SpringAnimationUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/util/SpringAnimationImpl;->mTargetView:Landroid/view/View;

    sget-object v2, Landroidx/dynamicanimation/animation/SpringAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/home/recents/util/SpringAnimationUtils;->createDefaultSpringAnim(Landroid/view/View;Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;F)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/util/SpringAnimationImpl;->mTransYSpringAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/util/SpringAnimationImpl;->mTransYSpringAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    return-object v0
.end method
