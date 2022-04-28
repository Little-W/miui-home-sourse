.class public Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;
.super Ljava/lang/Object;
.source "PhoneDialogAnim.java"

# interfaces
.implements Lmiuix/appcompat/widget/dialoganim/IDialogAnim;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefUpdateListener;,
        Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefShowListener;,
        Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefDismissListener;
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

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/view/View;I)V
    .locals 0

    .line 23
    invoke-static {p0, p1}, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;->relayoutView(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$100(Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 23
    invoke-static {p0}, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;->getHolderAnimView(Landroid/view/View;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Landroid/view/View;IIZLmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefShowListener;Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefUpdateListener;)V
    .locals 0

    .line 23
    invoke-static/range {p0 .. p5}, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;->executeAnim(Landroid/view/View;IIZLmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefShowListener;Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefUpdateListener;)V

    return-void
.end method

.method static synthetic access$300()Ljava/lang/ref/WeakReference;
    .locals 1

    .line 23
    sget-object v0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;->sValueAnimatorWeakRef:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$302(Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 23
    sput-object p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;->sValueAnimatorWeakRef:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method private static changeHeight(Landroid/view/View;I)V
    .locals 1

    .line 133
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 134
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 p1, 0x50

    .line 135
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 136
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private dismissPanel(Landroid/view/View;Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefDismissListener;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    .line 62
    :cond_0
    sget-object v0, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 63
    sget-object v2, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    new-array v3, v1, [F

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v4

    const/4 v5, 0x0

    aput v4, v3, v5

    const/high16 v4, 0x42c80000    # 100.0f

    const/4 v6, 0x1

    aput v4, v3, v6

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 65
    new-array v1, v1, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v1, v5

    aput-object v2, v1, v6

    invoke-static {p1, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 67
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 68
    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v0, 0xc8

    .line 69
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 70
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private static executeAnim(Landroid/view/View;IIZLmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefShowListener;Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefUpdateListener;)V
    .locals 1

    .line 117
    invoke-static {p0}, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;->getHolderAnimView(Landroid/view/View;)Landroid/view/View;

    move-result-object p0

    if-nez p3, :cond_0

    .line 119
    invoke-static {p0}, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;->getHolderAnimView(Landroid/view/View;)Landroid/view/View;

    move-result-object p0

    const/16 p3, 0xf

    invoke-static {p0, p3}, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;->changeHeight(Landroid/view/View;I)V

    :cond_0
    const/4 p0, 0x2

    .line 121
    new-array p3, p0, [I

    const/4 v0, 0x0

    aput p1, p3, v0

    const/4 p1, 0x1

    aput p2, p3, p1

    invoke-static {p3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 p2, 0x12c

    .line 122
    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 123
    new-array p0, p0, [F

    fill-array-data p0, :array_0

    invoke-static {v0, p0}, Lmiuix/animation/utils/EaseManager;->getInterpolator(I[F)Landroid/animation/TimeInterpolator;

    move-result-object p0

    .line 125
    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 126
    invoke-virtual {p1, p5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 127
    invoke-virtual {p1, p4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 128
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 129
    new-instance p0, Ljava/lang/ref/WeakReference;

    invoke-direct {p0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;->sValueAnimatorWeakRef:Ljava/lang/ref/WeakReference;

    return-void

    :array_0
    .array-data 4
        0x3f59999a    # 0.85f
        0x3f28f5c3    # 0.66f
    .end array-data
.end method

.method private static getHolderAnimView(Landroid/view/View;)Landroid/view/View;
    .locals 1

    .line 144
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    sget v0, Lmiuix/appcompat/R$id;->dialog_anim_holder:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private static relayoutView(Landroid/view/View;I)V
    .locals 0

    int-to-float p1, p1

    .line 140
    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method


# virtual methods
.method public cancelAnimator()V
    .locals 1

    .line 41
    sget-object v0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;->sValueAnimatorWeakRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 44
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method public executeDismissAnim(Landroid/view/View;Landroid/view/View;Lmiuix/appcompat/widget/DialogAnimHelper$OnDismiss;)V
    .locals 2

    const-string v0, "hide"

    .line 51
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 54
    :cond_0
    new-instance v0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefDismissListener;

    invoke-direct {v0, p0, p1, p3}, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefDismissListener;-><init>(Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;Landroid/view/View;Lmiuix/appcompat/widget/DialogAnimHelper$OnDismiss;)V

    invoke-direct {p0, p1, v0}, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;->dismissPanel(Landroid/view/View;Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefDismissListener;)V

    .line 55
    invoke-static {p2}, Lmiuix/appcompat/widget/dialoganim/DimAnimator;->dismiss(Landroid/view/View;)V

    return-void
.end method

.method public executeShowAnim(Landroid/view/View;Landroid/view/View;ZLmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;)V
    .locals 2

    .line 76
    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleX(F)V

    .line 78
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    .line 80
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lez v0, :cond_1

    .line 81
    new-instance v0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$1;

    invoke-direct {v0, p0, p3, p1, p4}, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$1;-><init>(Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;ZLandroid/view/View;Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    const/4 p3, 0x4

    .line 95
    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 96
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 98
    :cond_1
    new-instance v0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$2;

    invoke-direct {v0, p0, p3, p4, p1}, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$2;-><init>(Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;ZLmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 112
    :goto_0
    invoke-static {p2}, Lmiuix/appcompat/widget/dialoganim/DimAnimator;->show(Landroid/view/View;)V

    return-void
.end method
