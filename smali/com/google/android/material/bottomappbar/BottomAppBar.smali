.class public Lcom/google/android/material/bottomappbar/BottomAppBar;
.super Landroidx/appcompat/widget/Toolbar;
.source "BottomAppBar.java"

# interfaces
.implements Landroidx/coordinatorlayout/widget/CoordinatorLayout$AttachedBehavior;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/bottomappbar/BottomAppBar$SavedState;,
        Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;,
        Lcom/google/android/material/bottomappbar/BottomAppBar$AnimationListener;
    }
.end annotation


# static fields
.field private static final DEF_STYLE_RES:I


# instance fields
.field private animatingModeChangeCounter:I

.field private animationListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/material/bottomappbar/BottomAppBar$AnimationListener;",
            ">;"
        }
    .end annotation
.end field

.field private behavior:Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;

.field private bottomInset:I

.field private fabAlignmentMode:I

.field fabAnimationListener:Landroid/animation/AnimatorListenerAdapter;

.field private fabAnimationMode:I

.field private fabAttached:Z

.field private final fabOffsetEndMode:I

.field fabTransformationCallback:Lcom/google/android/material/animation/TransformationCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/animation/TransformationCallback<",
            "Lcom/google/android/material/floatingactionbutton/FloatingActionButton;",
            ">;"
        }
    .end annotation
.end field

.field private hideOnScroll:Z

.field private leftInset:I

.field private final materialShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

.field private menuAnimatingWithFabAlignmentMode:Z

.field private menuAnimator:Landroid/animation/Animator;

.field private modeAnimator:Landroid/animation/Animator;

.field private navigationIconTint:Ljava/lang/Integer;

.field private pendingMenuResId:I

.field private rightInset:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 113
    sget v0, Lcom/google/android/material/R$style;->Widget_MaterialComponents_BottomAppBar:I

    sput v0, Lcom/google/android/material/bottomappbar/BottomAppBar;->DEF_STYLE_RES:I

    return-void
.end method

.method static synthetic access$002(Lcom/google/android/material/bottomappbar/BottomAppBar;Z)Z
    .locals 0

    .line 111
    iput-boolean p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->menuAnimatingWithFabAlignmentMode:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/google/android/material/bottomappbar/BottomAppBar;)V
    .locals 0

    .line 111
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->setCutoutState()V

    return-void
.end method

.method static synthetic access$1500(Lcom/google/android/material/bottomappbar/BottomAppBar;)V
    .locals 0

    .line 111
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->dispatchAnimationStart()V

    return-void
.end method

.method static synthetic access$1600(Lcom/google/android/material/bottomappbar/BottomAppBar;)V
    .locals 0

    .line 111
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->dispatchAnimationEnd()V

    return-void
.end method

.method static synthetic access$1702(Lcom/google/android/material/bottomappbar/BottomAppBar;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->modeAnimator:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/google/android/material/bottomappbar/BottomAppBar;I)F
    .locals 0

    .line 111
    invoke-direct {p0, p1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getFabTranslationX(I)F

    move-result p0

    return p0
.end method

.method static synthetic access$1902(Lcom/google/android/material/bottomappbar/BottomAppBar;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->menuAnimator:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic access$2000(Lcom/google/android/material/bottomappbar/BottomAppBar;)I
    .locals 0

    .line 111
    iget p0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->pendingMenuResId:I

    return p0
.end method

.method static synthetic access$2100(Lcom/google/android/material/bottomappbar/BottomAppBar;Landroidx/appcompat/widget/ActionMenuView;IZZ)V
    .locals 0

    .line 111
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/material/bottomappbar/BottomAppBar;->translateActionMenuView(Landroidx/appcompat/widget/ActionMenuView;IZZ)V

    return-void
.end method

.method static synthetic access$2200(Lcom/google/android/material/bottomappbar/BottomAppBar;)Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    .locals 0

    .line 111
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->findDependentFab()Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2300(Lcom/google/android/material/bottomappbar/BottomAppBar;)F
    .locals 0

    .line 111
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getFabTranslationX()F

    move-result p0

    return p0
.end method

.method static synthetic access$2700(Lcom/google/android/material/bottomappbar/BottomAppBar;)I
    .locals 0

    .line 111
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getBottomInset()I

    move-result p0

    return p0
.end method

.method static synthetic access$2800(Lcom/google/android/material/bottomappbar/BottomAppBar;)I
    .locals 0

    .line 111
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getLeftInset()I

    move-result p0

    return p0
.end method

.method static synthetic access$2900(Lcom/google/android/material/bottomappbar/BottomAppBar;)I
    .locals 0

    .line 111
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getRightInset()I

    move-result p0

    return p0
.end method

.method static synthetic access$3000(Lcom/google/android/material/bottomappbar/BottomAppBar;)I
    .locals 0

    .line 111
    iget p0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->fabOffsetEndMode:I

    return p0
.end method

.method static synthetic access$3100(Lcom/google/android/material/bottomappbar/BottomAppBar;)Landroid/view/View;
    .locals 0

    .line 111
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->findDependentView()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3200(Lcom/google/android/material/bottomappbar/BottomAppBar;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V
    .locals 0

    .line 111
    invoke-direct {p0, p1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->addFabAnimationListeners(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V

    return-void
.end method

.method private addFabAnimationListeners(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V
    .locals 1

    .line 1003
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->fabAnimationListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {p1, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->addOnHideAnimationListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1004
    new-instance v0, Lcom/google/android/material/bottomappbar/BottomAppBar$9;

    invoke-direct {v0, p0}, Lcom/google/android/material/bottomappbar/BottomAppBar$9;-><init>(Lcom/google/android/material/bottomappbar/BottomAppBar;)V

    invoke-virtual {p1, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->addOnShowAnimationListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1017
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->fabTransformationCallback:Lcom/google/android/material/animation/TransformationCallback;

    invoke-virtual {p1, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->addTransformationCallback(Lcom/google/android/material/animation/TransformationCallback;)V

    return-void
.end method

.method private cancelAnimations()V
    .locals 1

    .line 939
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->menuAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 940
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 942
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->modeAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    .line 943
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_1
    return-void
.end method

.method private createFabTranslationXAnimation(ILjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .line 717
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->findDependentFab()Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    move-result-object v0

    const-string/jumbo v1, "translationX"

    const/4 v2, 0x1

    new-array v2, v2, [F

    invoke-direct {p0, p1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getFabTranslationX(I)F

    move-result p1

    const/4 v3, 0x0

    aput p1, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v0, 0x12c

    .line 718
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 719
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private createMenuViewTranslationAnimation(IZLjava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .line 781
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getActionMenuView()Landroidx/appcompat/widget/ActionMenuView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "alpha"

    const/4 v2, 0x1

    .line 788
    new-array v3, v2, [F

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    aput v4, v3, v5

    invoke-static {v0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 791
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->getTranslationX()F

    move-result v3

    .line 792
    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getActionMenuViewTranslationX(Landroidx/appcompat/widget/ActionMenuView;IZ)I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v3, v6

    .line 795
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    const-string v3, "alpha"

    .line 797
    new-array v4, v2, [F

    const/4 v6, 0x0

    aput v6, v4, v5

    invoke-static {v0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 799
    new-instance v4, Lcom/google/android/material/bottomappbar/BottomAppBar$7;

    invoke-direct {v4, p0, v0, p1, p2}, Lcom/google/android/material/bottomappbar/BottomAppBar$7;-><init>(Lcom/google/android/material/bottomappbar/BottomAppBar;Landroidx/appcompat/widget/ActionMenuView;IZ)V

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 818
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    const-wide/16 v6, 0x96

    .line 819
    invoke-virtual {p1, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    const/4 p2, 0x2

    .line 820
    new-array p2, p2, [Landroid/animation/Animator;

    aput-object v3, p2, v5

    aput-object v1, p2, v2

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 821
    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 822
    :cond_1
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->getAlpha()F

    move-result p1

    cmpg-float p1, p1, v4

    if-gez p1, :cond_2

    .line 825
    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method private dispatchAnimationEnd()V
    .locals 2

    .line 588
    iget v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->animatingModeChangeCounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->animatingModeChangeCounter:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->animationListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 590
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/bottomappbar/BottomAppBar$AnimationListener;

    .line 591
    invoke-interface {v1, p0}, Lcom/google/android/material/bottomappbar/BottomAppBar$AnimationListener;->onAnimationEnd(Lcom/google/android/material/bottomappbar/BottomAppBar;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private dispatchAnimationStart()V
    .locals 2

    .line 579
    iget v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->animatingModeChangeCounter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->animatingModeChangeCounter:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->animationListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 581
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/bottomappbar/BottomAppBar$AnimationListener;

    .line 582
    invoke-interface {v1, p0}, Lcom/google/android/material/bottomappbar/BottomAppBar$AnimationListener;->onAnimationStart(Lcom/google/android/material/bottomappbar/BottomAppBar;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private findDependentFab()Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    .locals 2

    .line 655
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->findDependentView()Landroid/view/View;

    move-result-object v0

    .line 656
    instance-of v1, v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private findDependentView()Landroid/view/View;
    .locals 4

    .line 661
    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 666
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    invoke-virtual {v0, p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getDependents(Landroid/view/View;)Ljava/util/List;

    move-result-object v0

    .line 667
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 668
    instance-of v3, v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    if-nez v3, :cond_2

    instance-of v3, v2, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    if-eqz v3, :cond_1

    :cond_2
    return-object v2

    :cond_3
    return-object v1
.end method

.method private getActionMenuView()Landroidx/appcompat/widget/ActionMenuView;
    .locals 3

    const/4 v0, 0x0

    .line 850
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 851
    invoke-virtual {p0, v0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 852
    instance-of v2, v1, Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v2, :cond_0

    .line 853
    check-cast v1, Landroidx/appcompat/widget/ActionMenuView;

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private getBottomInset()I
    .locals 1

    .line 1021
    iget v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->bottomInset:I

    return v0
.end method

.method private getFabTranslationX()F
    .locals 1

    .line 845
    iget v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->fabAlignmentMode:I

    invoke-direct {p0, v0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getFabTranslationX(I)F

    move-result v0

    return v0
.end method

.method private getFabTranslationX(I)F
    .locals 3

    .line 834
    invoke-static {p0}, Lcom/google/android/material/internal/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    if-eqz v0, :cond_0

    .line 836
    iget p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->leftInset:I

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->rightInset:I

    .line 837
    :goto_0
    iget v2, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->fabOffsetEndMode:I

    add-int/2addr v2, p1

    .line 838
    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getMeasuredWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    sub-int/2addr p1, v2

    if-eqz v0, :cond_1

    const/4 v1, -0x1

    :cond_1
    mul-int/2addr p1, v1

    int-to-float p1, p1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private getFabTranslationY()F
    .locals 1

    .line 830
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getTopEdgeTreatment()Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->getCradleVerticalOffset()F

    move-result v0

    neg-float v0, v0

    return v0
.end method

.method private getLeftInset()I
    .locals 1

    .line 1029
    iget v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->leftInset:I

    return v0
.end method

.method private getRightInset()I
    .locals 1

    .line 1025
    iget v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->rightInset:I

    return v0
.end method

.method private getTopEdgeTreatment()Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;
    .locals 1

    .line 967
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->materialShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 968
    invoke-virtual {v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getShapeAppearanceModel()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getTopEdge()Lcom/google/android/material/shape/EdgeTreatment;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;

    return-object v0
.end method

.method private isFabVisibleOrWillBeShown()Z
    .locals 1

    .line 677
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->findDependentFab()Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 678
    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->isOrWillBeShown()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private maybeAnimateMenuView(IZ)V
    .locals 3

    .line 734
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 735
    iput-boolean v1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->menuAnimatingWithFabAlignmentMode:Z

    .line 738
    iget p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->pendingMenuResId:I

    invoke-virtual {p0, p1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->replaceMenu(I)V

    return-void

    .line 742
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->menuAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    .line 743
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 746
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 749
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->isFabVisibleOrWillBeShown()Z

    move-result v2

    if-nez v2, :cond_2

    move p1, v1

    move p2, p1

    .line 754
    :cond_2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->createMenuViewTranslationAnimation(IZLjava/util/List;)V

    .line 756
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 757
    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 758
    iput-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->menuAnimator:Landroid/animation/Animator;

    .line 759
    iget-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->menuAnimator:Landroid/animation/Animator;

    new-instance p2, Lcom/google/android/material/bottomappbar/BottomAppBar$6;

    invoke-direct {p2, p0}, Lcom/google/android/material/bottomappbar/BottomAppBar$6;-><init>(Lcom/google/android/material/bottomappbar/BottomAppBar;)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 773
    iget-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->menuAnimator:Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method private maybeAnimateModeChange(I)V
    .locals 3

    .line 618
    iget v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->fabAlignmentMode:I

    if-eq v0, p1, :cond_3

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 622
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->modeAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    .line 623
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 626
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 628
    iget v1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->fabAnimationMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 629
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->createFabTranslationXAnimation(ILjava/util/List;)V

    goto :goto_0

    .line 631
    :cond_2
    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->createFabDefaultXAnimation(ILjava/util/List;)V

    .line 634
    :goto_0
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 635
    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 636
    iput-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->modeAnimator:Landroid/animation/Animator;

    .line 637
    iget-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->modeAnimator:Landroid/animation/Animator;

    new-instance v0, Lcom/google/android/material/bottomappbar/BottomAppBar$4;

    invoke-direct {v0, p0}, Lcom/google/android/material/bottomappbar/BottomAppBar$4;-><init>(Lcom/google/android/material/bottomappbar/BottomAppBar;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 650
    iget-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->modeAnimator:Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    return-void

    :cond_3
    :goto_1
    return-void
.end method

.method private maybeTintNavigationIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1

    if-eqz p1, :cond_0

    .line 724
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->navigationIconTint:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 725
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-static {p1}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 726
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->navigationIconTint:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p1, v0}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    return-object p1

    :cond_0
    return-object p1
.end method

.method private setActionMenuViewPosition()V
    .locals 3

    .line 983
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getActionMenuView()Landroidx/appcompat/widget/ActionMenuView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 986
    iget-object v1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->menuAnimator:Landroid/animation/Animator;

    if-nez v1, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    .line 987
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionMenuView;->setAlpha(F)V

    .line 988
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->isFabVisibleOrWillBeShown()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 989
    invoke-direct {p0, v0, v1, v1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->translateActionMenuView(Landroidx/appcompat/widget/ActionMenuView;IZ)V

    goto :goto_0

    .line 991
    :cond_0
    iget v1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->fabAlignmentMode:I

    iget-boolean v2, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->fabAttached:Z

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/material/bottomappbar/BottomAppBar;->translateActionMenuView(Landroidx/appcompat/widget/ActionMenuView;IZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setCutoutState()V
    .locals 3

    .line 973
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getTopEdgeTreatment()Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getFabTranslationX()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->setHorizontalOffset(F)V

    .line 974
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->findDependentView()Landroid/view/View;

    move-result-object v0

    .line 975
    iget-object v1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->materialShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    iget-boolean v2, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->fabAttached:Z

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->isFabVisibleOrWillBeShown()Z

    move-result v2

    if-eqz v2, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setInterpolation(F)V

    if-eqz v0, :cond_1

    .line 977
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getFabTranslationY()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 978
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getFabTranslationX()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    :cond_1
    return-void
.end method

.method private translateActionMenuView(Landroidx/appcompat/widget/ActionMenuView;IZ)V
    .locals 1

    const/4 v0, 0x0

    .line 864
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->translateActionMenuView(Landroidx/appcompat/widget/ActionMenuView;IZZ)V

    return-void
.end method

.method private translateActionMenuView(Landroidx/appcompat/widget/ActionMenuView;IZZ)V
    .locals 1

    .line 882
    new-instance v0, Lcom/google/android/material/bottomappbar/BottomAppBar$8;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/material/bottomappbar/BottomAppBar$8;-><init>(Lcom/google/android/material/bottomappbar/BottomAppBar;Landroidx/appcompat/widget/ActionMenuView;IZ)V

    if-eqz p4, :cond_0

    .line 892
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionMenuView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 894
    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method


# virtual methods
.method protected createFabDefaultXAnimation(ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .line 690
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->findDependentFab()Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 692
    invoke-virtual {p2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->isOrWillBeHidden()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 696
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->dispatchAnimationStart()V

    .line 698
    new-instance v0, Lcom/google/android/material/bottomappbar/BottomAppBar$5;

    invoke-direct {v0, p0, p1}, Lcom/google/android/material/bottomappbar/BottomAppBar$5;-><init>(Lcom/google/android/material/bottomappbar/BottomAppBar;I)V

    invoke-virtual {p2, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->hide(Lcom/google/android/material/floatingactionbutton/FloatingActionButton$OnVisibilityChangedListener;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method protected getActionMenuViewTranslationX(Landroidx/appcompat/widget/ActionMenuView;IZ)I
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p2, v0, :cond_8

    if-nez p3, :cond_0

    goto/16 :goto_6

    .line 912
    :cond_0
    invoke-static {p0}, Lcom/google/android/material/internal/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 913
    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getMeasuredWidth()I

    move-result p3

    goto :goto_0

    :cond_1
    move p3, v1

    :goto_0
    move v2, p3

    move p3, v1

    .line 916
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getChildCount()I

    move-result v3

    if-ge p3, v3, :cond_5

    .line 917
    invoke-virtual {p0, p3}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 919
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    instance-of v4, v4, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    if-eqz v4, :cond_2

    .line 920
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    iget v4, v4, Landroidx/appcompat/widget/Toolbar$LayoutParams;->gravity:I

    const v5, 0x800007

    and-int/2addr v4, v5

    const v5, 0x800003

    if-ne v4, v5, :cond_2

    move v4, v0

    goto :goto_2

    :cond_2
    move v4, v1

    :goto_2
    if-eqz v4, :cond_4

    if-eqz p2, :cond_3

    .line 926
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_3

    .line 927
    :cond_3
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    :cond_4
    :goto_3
    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_5
    if-eqz p2, :cond_6

    .line 931
    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionMenuView;->getRight()I

    move-result p1

    goto :goto_4

    :cond_6
    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionMenuView;->getLeft()I

    move-result p1

    :goto_4
    if-eqz p2, :cond_7

    .line 932
    iget p2, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->rightInset:I

    goto :goto_5

    :cond_7
    iget p2, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->leftInset:I

    neg-int p2, p2

    :goto_5
    add-int/2addr p1, p2

    sub-int/2addr v2, p1

    return v2

    :cond_8
    :goto_6
    return v1
.end method

.method public getBackgroundTint()Landroid/content/res/ColorStateList;
    .locals 1

    .line 426
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->materialShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
    .locals 1

    .line 111
    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getBehavior()Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;

    move-result-object v0

    return-object v0
.end method

.method public getBehavior()Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;
    .locals 1

    .line 1045
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->behavior:Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;

    if-nez v0, :cond_0

    .line 1046
    new-instance v0, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;

    invoke-direct {v0}, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->behavior:Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;

    .line 1048
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->behavior:Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;

    return-object v0
.end method

.method public getCradleVerticalOffset()F
    .locals 1

    .line 466
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getTopEdgeTreatment()Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->getCradleVerticalOffset()F

    move-result v0

    return v0
.end method

.method public getFabAlignmentMode()I
    .locals 1

    .line 365
    iget v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->fabAlignmentMode:I

    return v0
.end method

.method public getFabAnimationMode()I
    .locals 1

    .line 406
    iget v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->fabAnimationMode:I

    return v0
.end method

.method public getFabCradleMargin()F
    .locals 1

    .line 433
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getTopEdgeTreatment()Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->getFabCradleMargin()F

    move-result v0

    return v0
.end method

.method public getFabCradleRoundedCornerRadius()F
    .locals 1

    .line 449
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getTopEdgeTreatment()Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->getFabCradleRoundedCornerRadius()F

    move-result v0

    return v0
.end method

.method public getHideOnScroll()Z
    .locals 1

    .line 488
    iget-boolean v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->hideOnScroll:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 1053
    invoke-super {p0}, Landroidx/appcompat/widget/Toolbar;->onAttachedToWindow()V

    .line 1055
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->materialShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-static {p0, v0}, Lcom/google/android/material/shape/MaterialShapeUtils;->setParentAbsoluteElevation(Landroid/view/View;Lcom/google/android/material/shape/MaterialShapeDrawable;)V

    .line 1059
    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 1060
    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 949
    invoke-super/range {p0 .. p5}, Landroidx/appcompat/widget/Toolbar;->onLayout(ZIIII)V

    if-eqz p1, :cond_0

    .line 956
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->cancelAnimations()V

    .line 958
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->setCutoutState()V

    .line 962
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->setActionMenuViewPosition()V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 1221
    instance-of v0, p1, Lcom/google/android/material/bottomappbar/BottomAppBar$SavedState;

    if-nez v0, :cond_0

    .line 1222
    invoke-super {p0, p1}, Landroidx/appcompat/widget/Toolbar;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 1225
    :cond_0
    check-cast p1, Lcom/google/android/material/bottomappbar/BottomAppBar$SavedState;

    .line 1226
    invoke-virtual {p1}, Lcom/google/android/material/bottomappbar/BottomAppBar$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroidx/appcompat/widget/Toolbar;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1227
    iget v0, p1, Lcom/google/android/material/bottomappbar/BottomAppBar$SavedState;->fabAlignmentMode:I

    iput v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->fabAlignmentMode:I

    .line 1228
    iget-boolean p1, p1, Lcom/google/android/material/bottomappbar/BottomAppBar$SavedState;->fabAttached:Z

    iput-boolean p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->fabAttached:Z

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 1212
    invoke-super {p0}, Landroidx/appcompat/widget/Toolbar;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1213
    new-instance v1, Lcom/google/android/material/bottomappbar/BottomAppBar$SavedState;

    invoke-direct {v1, v0}, Lcom/google/android/material/bottomappbar/BottomAppBar$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1214
    iget v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->fabAlignmentMode:I

    iput v0, v1, Lcom/google/android/material/bottomappbar/BottomAppBar$SavedState;->fabAlignmentMode:I

    .line 1215
    iget-boolean v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->fabAttached:Z

    iput-boolean v0, v1, Lcom/google/android/material/bottomappbar/BottomAppBar$SavedState;->fabAttached:Z

    return-object v1
.end method

.method public replaceMenu(I)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 557
    iput v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->pendingMenuResId:I

    .line 558
    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/Menu;->clear()V

    .line 559
    invoke-virtual {p0, p1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->inflateMenu(I)V

    :cond_0
    return-void
.end method

.method public setBackgroundTint(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 421
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->materialShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setCradleVerticalOffset(F)V
    .locals 1

    .line 475
    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getCradleVerticalOffset()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 476
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getTopEdgeTreatment()Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->setCradleVerticalOffset(F)V

    .line 477
    iget-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->materialShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 478
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->setCutoutState()V

    :cond_0
    return-void
.end method

.method public setElevation(F)V
    .locals 1

    .line 542
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->materialShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setElevation(F)V

    .line 544
    iget-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->materialShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 545
    invoke-virtual {p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getShadowRadius()I

    move-result p1

    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->materialShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getShadowOffsetY()I

    move-result v0

    sub-int/2addr p1, v0

    .line 546
    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getBehavior()Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;->setAdditionalHiddenOffsetY(Landroid/view/View;I)V

    return-void
.end method

.method public setFabAlignmentMode(I)V
    .locals 1

    const/4 v0, 0x0

    .line 376
    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->setFabAlignmentModeAndReplaceMenu(II)V

    return-void
.end method

.method public setFabAlignmentModeAndReplaceMenu(II)V
    .locals 0

    .line 393
    iput p2, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->pendingMenuResId:I

    const/4 p2, 0x1

    .line 394
    iput-boolean p2, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->menuAnimatingWithFabAlignmentMode:Z

    .line 395
    iget-boolean p2, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->fabAttached:Z

    invoke-direct {p0, p1, p2}, Lcom/google/android/material/bottomappbar/BottomAppBar;->maybeAnimateMenuView(IZ)V

    .line 396
    invoke-direct {p0, p1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->maybeAnimateModeChange(I)V

    .line 397
    iput p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->fabAlignmentMode:I

    return-void
.end method

.method public setFabAnimationMode(I)V
    .locals 0

    .line 417
    iput p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->fabAnimationMode:I

    return-void
.end method

.method setFabCornerSize(F)V
    .locals 1

    .line 611
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getTopEdgeTreatment()Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->getFabCornerRadius()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 612
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getTopEdgeTreatment()Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->setFabCornerSize(F)V

    .line 613
    iget-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->materialShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setFabCradleMargin(F)V
    .locals 1

    .line 440
    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getFabCradleMargin()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 441
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getTopEdgeTreatment()Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->setFabCradleMargin(F)V

    .line 442
    iget-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->materialShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setFabCradleRoundedCornerRadius(F)V
    .locals 1

    .line 454
    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getFabCradleRoundedCornerRadius()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 455
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getTopEdgeTreatment()Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->setFabCradleRoundedCornerRadius(F)V

    .line 456
    iget-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->materialShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method setFabDiameter(I)Z
    .locals 1

    int-to-float p1, p1

    .line 601
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getTopEdgeTreatment()Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->getFabDiameter()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 602
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getTopEdgeTreatment()Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->setFabDiameter(F)V

    .line 603
    iget-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->materialShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setHideOnScroll(Z)V
    .locals 0

    .line 497
    iput-boolean p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->hideOnScroll:Z

    return-void
.end method

.method public setNavigationIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 342
    invoke-direct {p0, p1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->maybeTintNavigationIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-super {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setNavigationIconTint(I)V
    .locals 0

    .line 351
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->navigationIconTint:Ljava/lang/Integer;

    .line 352
    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 355
    invoke-virtual {p0, p1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    return-void
.end method
