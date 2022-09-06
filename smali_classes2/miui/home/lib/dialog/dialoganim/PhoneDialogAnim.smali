.class public Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim;
.super Ljava/lang/Object;
.source "PhoneDialogAnim.java"

# interfaces
.implements Lmiui/home/lib/dialog/dialoganim/IDialogAnim;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim$AnimLayoutChangeListener;,
        Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim$WeakRefUpdateListener;,
        Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim$WeakRefShowListener;,
        Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim$WeakRefDismissListener;
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


# instance fields
.field private mImeHeight:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput v0, p0, Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim;->mImeHeight:I

    return-void
.end method

.method static synthetic access$000(Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim;)I
    .locals 0

    .line 29
    iget p0, p0, Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim;->mImeHeight:I

    return p0
.end method

.method static synthetic access$002(Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim;I)I
    .locals 0

    .line 29
    iput p1, p0, Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim;->mImeHeight:I

    return p1
.end method

.method static synthetic access$100(Landroid/view/View;I)V
    .locals 0

    .line 29
    invoke-static {p0, p1}, Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim;->relayoutView(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$200(Landroid/view/View;IIZLmiui/home/lib/dialog/dialoganim/PhoneDialogAnim$WeakRefShowListener;Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim$WeakRefUpdateListener;)V
    .locals 0

    .line 29
    invoke-static/range {p0 .. p5}, Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim;->doExecuteShowAnim(Landroid/view/View;IIZLmiui/home/lib/dialog/dialoganim/PhoneDialogAnim$WeakRefShowListener;Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim$WeakRefUpdateListener;)V

    return-void
.end method

.method static synthetic access$300()Ljava/lang/ref/WeakReference;
    .locals 1

    .line 29
    sget-object v0, Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim;->sValueAnimatorWeakRef:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$302(Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 29
    sput-object p0, Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim;->sValueAnimatorWeakRef:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method private dismissPanel(Landroid/view/View;Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim$WeakRefDismissListener;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 70
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 71
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v1, v0

    .line 72
    sget-object v0, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    const/4 v2, 0x2

    new-array v2, v2, [F

    .line 75
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v3

    const/4 v4, 0x0

    aput v3, v2, v4

    int-to-float v1, v1

    const/4 v3, 0x1

    aput v1, v2, v3

    .line 73
    invoke-static {v0, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 78
    new-array v1, v3, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v1, v4

    invoke-static {p1, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 80
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 81
    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v0, 0xc8

    .line 82
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 83
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private static doExecuteShowAnim(Landroid/view/View;IIZLmiui/home/lib/dialog/dialoganim/PhoneDialogAnim$WeakRefShowListener;Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim$WeakRefUpdateListener;)V
    .locals 1

    const/4 p0, 0x2

    .line 161
    new-array p3, p0, [I

    const/4 v0, 0x0

    aput p1, p3, v0

    const/4 p1, 0x1

    aput p2, p3, p1

    invoke-static {p3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 p2, 0x15e

    .line 162
    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 163
    new-array p0, p0, [F

    fill-array-data p0, :array_0

    invoke-static {v0, p0}, Lmiuix/animation/utils/EaseManager;->getInterpolator(I[F)Landroid/animation/TimeInterpolator;

    move-result-object p0

    .line 165
    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 166
    invoke-virtual {p1, p5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 167
    invoke-virtual {p1, p4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 168
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 169
    new-instance p0, Ljava/lang/ref/WeakReference;

    invoke-direct {p0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object p0, Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim;->sValueAnimatorWeakRef:Ljava/lang/ref/WeakReference;

    return-void

    nop

    :array_0
    .array-data 4
        0x3f6147ae    # 0.88f
        0x3f333333    # 0.7f
    .end array-data
.end method

.method private static relayoutView(Landroid/view/View;I)V
    .locals 0

    int-to-float p1, p1

    .line 173
    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method


# virtual methods
.method public cancelAnimator()V
    .locals 1

    .line 49
    sget-object v0, Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim;->sValueAnimatorWeakRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method public executeDismissAnim(Landroid/view/View;Landroid/view/View;Lmiui/home/lib/dialog/dialoganim/DialogAnimHelper$OnDismiss;)V
    .locals 2

    const-string v0, "hide"

    .line 59
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 62
    :cond_0
    new-instance v0, Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim$WeakRefDismissListener;

    invoke-direct {v0, p0, p1, p3}, Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim$WeakRefDismissListener;-><init>(Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim;Landroid/view/View;Lmiui/home/lib/dialog/dialoganim/DialogAnimHelper$OnDismiss;)V

    invoke-direct {p0, p1, v0}, Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim;->dismissPanel(Landroid/view/View;Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim$WeakRefDismissListener;)V

    .line 63
    invoke-static {p2}, Lmiuix/appcompat/widget/dialoganim/DimAnimator;->dismiss(Landroid/view/View;)V

    return-void
.end method

.method public executeShowAnim(Landroid/view/View;Landroid/view/View;ZLmiui/home/lib/dialog/AlertDialog$OnDialogShowAnimListener;)V
    .locals 9

    const/4 v0, 0x0

    .line 89
    iput v0, p0, Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim;->mImeHeight:I

    .line 90
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 91
    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 92
    invoke-virtual {p1, v2}, Landroid/view/View;->setScaleX(F)V

    .line 93
    invoke-virtual {p1, v2}, Landroid/view/View;->setScaleY(F)V

    .line 96
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1e

    if-lt v1, v3, :cond_1

    .line 97
    new-instance v1, Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim$1;

    invoke-direct {v1, p0, p1, p2, v0}, Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim$1;-><init>(Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim;Landroid/view/View;Landroid/view/View;I)V

    move-object v8, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    move-object v8, v1

    .line 124
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lez v0, :cond_2

    .line 126
    new-instance v0, Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim$2;

    move-object v3, v0

    move-object v4, p0

    move-object v5, p1

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v3 .. v8}, Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim$2;-><init>(Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim;Landroid/view/View;ZLmiui/home/lib/dialog/AlertDialog$OnDialogShowAnimListener;Landroid/view/View$OnLayoutChangeListener;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    const/4 p3, 0x4

    .line 139
    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 140
    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1

    .line 142
    :cond_2
    new-instance v0, Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim$3;

    invoke-direct {v0, p0, p3, p4, v8}, Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim$3;-><init>(Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim;ZLmiui/home/lib/dialog/AlertDialog$OnDialogShowAnimListener;Landroid/view/View$OnLayoutChangeListener;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 156
    :goto_1
    invoke-static {p2}, Lmiuix/appcompat/widget/dialoganim/DimAnimator;->show(Landroid/view/View;)V

    return-void
.end method
