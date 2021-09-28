.class public Lmiuix/appcompat/widget/DialogAnimHelper;
.super Ljava/lang/Object;
.source "DialogAnimHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/appcompat/widget/DialogAnimHelper$WeakRefListener;,
        Lmiuix/appcompat/widget/DialogAnimHelper$OnDismiss;
    }
.end annotation


# static fields
.field private static sValueAnimatorWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/animation/ValueAnimator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method static synthetic access$000(Landroid/view/View;I)V
    .locals 0

    .line 27
    invoke-static {p0, p1}, Lmiuix/appcompat/widget/DialogAnimHelper;->relayoutView(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$100(Landroid/view/View;IIZLmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;)V
    .locals 0

    .line 27
    invoke-static {p0, p1, p2, p3, p4}, Lmiuix/appcompat/widget/DialogAnimHelper;->executeAnim(Landroid/view/View;IIZLmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;)V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/ref/WeakReference;
    .locals 1

    .line 27
    sget-object v0, Lmiuix/appcompat/widget/DialogAnimHelper;->sValueAnimatorWeakRef:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$202(Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 27
    sput-object p0, Lmiuix/appcompat/widget/DialogAnimHelper;->sValueAnimatorWeakRef:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static cancelAnimator()V
    .locals 1

    .line 148
    sget-object v0, Lmiuix/appcompat/widget/DialogAnimHelper;->sValueAnimatorWeakRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method private static changeHeight(Landroid/view/View;I)V
    .locals 1

    .line 157
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 158
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 p1, 0x50

    .line 159
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 160
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private static executeAnim(Landroid/view/View;IIZLmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;)V
    .locals 6

    .line 78
    invoke-static {p0}, Lmiuix/appcompat/widget/DialogAnimHelper;->getHolderAnimView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    if-nez p3, :cond_0

    .line 80
    invoke-static {v0}, Lmiuix/appcompat/widget/DialogAnimHelper;->getHolderAnimView(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0xf

    invoke-static {v1, v2}, Lmiuix/appcompat/widget/DialogAnimHelper;->changeHeight(Landroid/view/View;I)V

    :cond_0
    const/4 v1, 0x2

    .line 82
    new-array v2, v1, [I

    const/4 v3, 0x0

    aput p1, v2, v3

    const/4 p1, 0x1

    aput p2, v2, p1

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v4, 0x12c

    .line 83
    invoke-virtual {p1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 84
    new-array p2, v1, [F

    fill-array-data p2, :array_0

    invoke-static {v3, p2}, Lmiuix/animation/utils/EaseManager;->getInterpolator(I[F)Landroid/animation/TimeInterpolator;

    move-result-object p2

    .line 86
    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 87
    new-instance p2, Lmiuix/appcompat/widget/-$$Lambda$DialogAnimHelper$133JnCzVKn-ZBowipyJJ4bwcO0A;

    invoke-direct {p2, p0, v0, p3}, Lmiuix/appcompat/widget/-$$Lambda$DialogAnimHelper$133JnCzVKn-ZBowipyJJ4bwcO0A;-><init>(Landroid/view/View;Landroid/view/View;Z)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 111
    new-instance p2, Lmiuix/appcompat/widget/DialogAnimHelper$3;

    invoke-direct {p2, p0, p4}, Lmiuix/appcompat/widget/DialogAnimHelper$3;-><init>(Landroid/view/View;Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 143
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 144
    new-instance p0, Ljava/lang/ref/WeakReference;

    invoke-direct {p0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object p0, Lmiuix/appcompat/widget/DialogAnimHelper;->sValueAnimatorWeakRef:Ljava/lang/ref/WeakReference;

    return-void

    :array_0
    .array-data 4
        0x3f59999a    # 0.85f
        0x3f28f5c3    # 0.66f
    .end array-data
.end method

.method public static executeDismissAnim(Landroid/view/View;Landroid/view/View;Lmiuix/appcompat/widget/DialogAnimHelper$OnDismiss;)V
    .locals 6

    const-string v0, "hide"

    .line 172
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 175
    :cond_0
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const/4 v1, 0x1

    .line 176
    new-array v2, v1, [Lmiuix/animation/listener/TransitionListener;

    new-instance v3, Lmiuix/appcompat/widget/DialogAnimHelper$WeakRefListener;

    invoke-direct {v3, p0, p2}, Lmiuix/appcompat/widget/DialogAnimHelper$WeakRefListener;-><init>(Landroid/view/View;Lmiuix/appcompat/widget/DialogAnimHelper$OnDismiss;)V

    const/4 p2, 0x0

    aput-object v3, v2, p2

    invoke-virtual {v0, v2}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 177
    new-array v2, v1, [Landroid/view/View;

    aput-object p0, v2, p2

    invoke-static {v2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p0

    invoke-interface {p0}, Lmiuix/animation/IFolme;->visible()Lmiuix/animation/IVisibleStyle;

    move-result-object p0

    const-wide/16 v2, 0x1

    invoke-interface {p0, v2, v3}, Lmiuix/animation/IVisibleStyle;->setFlags(J)Lmiuix/animation/IVisibleStyle;

    move-result-object p0

    new-array v4, v1, [Lmiuix/animation/IVisibleStyle$VisibleType;

    sget-object v5, Lmiuix/animation/IVisibleStyle$VisibleType;->HIDE:Lmiuix/animation/IVisibleStyle$VisibleType;

    aput-object v5, v4, p2

    const/4 v5, 0x0

    .line 178
    invoke-interface {p0, v5, v4}, Lmiuix/animation/IVisibleStyle;->setAlpha(F[Lmiuix/animation/IVisibleStyle$VisibleType;)Lmiuix/animation/IVisibleStyle;

    move-result-object p0

    const/16 v4, 0x64

    .line 179
    invoke-interface {p0, p2, v4}, Lmiuix/animation/IVisibleStyle;->setMove(II)Lmiuix/animation/IVisibleStyle;

    move-result-object p0

    new-array v4, v1, [Lmiuix/animation/base/AnimConfig;

    aput-object v0, v4, p2

    .line 180
    invoke-interface {p0, v4}, Lmiuix/animation/IVisibleStyle;->hide([Lmiuix/animation/base/AnimConfig;)V

    .line 181
    new-array p0, v1, [Landroid/view/View;

    aput-object p1, p0, p2

    invoke-static {p0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p0

    invoke-interface {p0}, Lmiuix/animation/IFolme;->visible()Lmiuix/animation/IVisibleStyle;

    move-result-object p0

    invoke-interface {p0, v2, v3}, Lmiuix/animation/IVisibleStyle;->setFlags(J)Lmiuix/animation/IVisibleStyle;

    move-result-object p0

    new-array p1, v1, [Lmiuix/animation/IVisibleStyle$VisibleType;

    sget-object v0, Lmiuix/animation/IVisibleStyle$VisibleType;->HIDE:Lmiuix/animation/IVisibleStyle$VisibleType;

    aput-object v0, p1, p2

    .line 182
    invoke-interface {p0, v5, p1}, Lmiuix/animation/IVisibleStyle;->setAlpha(F[Lmiuix/animation/IVisibleStyle$VisibleType;)Lmiuix/animation/IVisibleStyle;

    move-result-object p0

    new-array p1, p2, [Lmiuix/animation/base/AnimConfig;

    .line 183
    invoke-interface {p0, p1}, Lmiuix/animation/IVisibleStyle;->hide([Lmiuix/animation/base/AnimConfig;)V

    return-void
.end method

.method public static executeShowAnim(Landroid/view/View;Landroid/view/View;ZLmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;)V
    .locals 2

    .line 43
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    .line 44
    new-instance v0, Lmiuix/appcompat/widget/DialogAnimHelper$1;

    invoke-direct {v0, p2, p0, p3}, Lmiuix/appcompat/widget/DialogAnimHelper$1;-><init>(ZLandroid/view/View;Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    const/4 p2, 0x4

    .line 56
    invoke-virtual {p0, p2}, Landroid/view/View;->setVisibility(I)V

    const/high16 p2, 0x3f800000    # 1.0f

    .line 57
    invoke-virtual {p0, p2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 59
    :cond_0
    new-instance v0, Lmiuix/appcompat/widget/DialogAnimHelper$2;

    invoke-direct {v0, p2, p3}, Lmiuix/appcompat/widget/DialogAnimHelper$2;-><init>(ZLmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :goto_0
    const/4 p0, 0x1

    .line 72
    new-array p2, p0, [Landroid/view/View;

    const/4 p3, 0x0

    aput-object p1, p2, p3

    invoke-static {p2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/animation/IFolme;->visible()Lmiuix/animation/IVisibleStyle;

    move-result-object p1

    const-wide/16 v0, 0x1

    invoke-interface {p1, v0, v1}, Lmiuix/animation/IVisibleStyle;->setFlags(J)Lmiuix/animation/IVisibleStyle;

    move-result-object p1

    const p2, 0x3e99999a    # 0.3f

    new-array p0, p0, [Lmiuix/animation/IVisibleStyle$VisibleType;

    sget-object v0, Lmiuix/animation/IVisibleStyle$VisibleType;->SHOW:Lmiuix/animation/IVisibleStyle$VisibleType;

    aput-object v0, p0, p3

    .line 73
    invoke-interface {p1, p2, p0}, Lmiuix/animation/IVisibleStyle;->setAlpha(F[Lmiuix/animation/IVisibleStyle$VisibleType;)Lmiuix/animation/IVisibleStyle;

    move-result-object p0

    new-array p1, p3, [Lmiuix/animation/base/AnimConfig;

    .line 74
    invoke-interface {p0, p1}, Lmiuix/animation/IVisibleStyle;->show([Lmiuix/animation/base/AnimConfig;)V

    return-void
.end method

.method private static getHolderAnimView(Landroid/view/View;)Landroid/view/View;
    .locals 1

    .line 168
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    sget v0, Lmiuix/appcompat/R$id;->dialog_anim_holder:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$executeAnim$0(Landroid/view/View;Landroid/view/View;ZLandroid/animation/ValueAnimator;)V
    .locals 2

    const-string v0, "hide"

    .line 88
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->cancel()V

    .line 91
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 95
    :cond_0
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-nez p2, :cond_2

    if-nez p3, :cond_1

    .line 98
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 99
    :cond_1
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p2

    const/16 v0, 0xf

    if-ge p2, v0, :cond_3

    const/4 p2, 0x0

    .line 104
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 107
    :cond_2
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 109
    :cond_3
    :goto_0
    invoke-static {p0, p3}, Lmiuix/appcompat/widget/DialogAnimHelper;->relayoutView(Landroid/view/View;I)V

    return-void
.end method

.method private static relayoutView(Landroid/view/View;I)V
    .locals 0

    int-to-float p1, p1

    .line 164
    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method
