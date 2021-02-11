.class public Lmiuix/visual/check/BorderLayout;
.super Landroid/widget/LinearLayout;
.source "BorderLayout.java"

# interfaces
.implements Lmiuix/visual/check/VisualCheckItem;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/visual/check/BorderLayout$DrawableTarget;
    }
.end annotation


# instance fields
.field private iFolme:Lmiuix/animation/IFolme;

.field private mBackGround:Landroid/graphics/drawable/Drawable;

.field private mDrawableTarget:Lmiuix/visual/check/BorderLayout$DrawableTarget;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    .line 33
    new-array v0, v0, [Landroid/view/View;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    iput-object v0, p0, Lmiuix/visual/check/BorderLayout;->iFolme:Lmiuix/animation/IFolme;

    .line 34
    sget-object v0, Lmiuix/visualcheck/R$styleable;->BorderLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 35
    sget p2, Lmiuix/visualcheck/R$styleable;->BorderLayout_checkedBackGround:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lmiuix/visual/check/BorderLayout;->mBackGround:Landroid/graphics/drawable/Drawable;

    .line 36
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 37
    iget-object p1, p0, Lmiuix/visual/check/BorderLayout;->mBackGround:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_0

    .line 38
    invoke-virtual {p0}, Lmiuix/visual/check/BorderLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lmiuix/visualcheck/R$drawable;->borderlayout_bg:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lmiuix/visual/check/BorderLayout;->mBackGround:Landroid/graphics/drawable/Drawable;

    .line 40
    :cond_0
    new-instance p1, Lmiuix/visual/check/BorderLayout$DrawableTarget;

    iget-object p2, p0, Lmiuix/visual/check/BorderLayout;->mBackGround:Landroid/graphics/drawable/Drawable;

    invoke-direct {p1, p2}, Lmiuix/visual/check/BorderLayout$DrawableTarget;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object p1, p0, Lmiuix/visual/check/BorderLayout;->mDrawableTarget:Lmiuix/visual/check/BorderLayout$DrawableTarget;

    return-void
.end method


# virtual methods
.method public onChecked(Z)V
    .locals 5

    .line 58
    invoke-virtual {p0}, Lmiuix/visual/check/BorderLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 60
    iget-object v0, p0, Lmiuix/visual/check/BorderLayout;->mBackGround:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lmiuix/visual/check/BorderLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 61
    iget-object v0, p0, Lmiuix/visual/check/BorderLayout;->mBackGround:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    const/16 v1, 0xff

    :cond_0
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    const/4 v2, 0x1

    if-nez p1, :cond_2

    .line 63
    new-array p1, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lmiuix/visual/check/BorderLayout;->mDrawableTarget:Lmiuix/visual/check/BorderLayout$DrawableTarget;

    aput-object v3, p1, v1

    invoke-static {p1}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "alpha"

    aput-object v4, v3, v1

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v3, v2

    const/4 v1, -0x2

    new-array v2, v0, [F

    fill-array-data v2, :array_0

    .line 64
    invoke-static {v1, v2}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object v1

    aput-object v1, v3, v0

    .line 63
    invoke-interface {p1, v3}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    goto :goto_0

    .line 66
    :cond_2
    new-array p1, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lmiuix/visual/check/BorderLayout;->mDrawableTarget:Lmiuix/visual/check/BorderLayout$DrawableTarget;

    aput-object v3, p1, v1

    invoke-static {p1}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v3, "alpha"

    aput-object v3, v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-interface {p1, v0}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    :goto_0
    return-void

    :array_0
    .array-data 4
        0x3f666666    # 0.9f
        0x3e19999a    # 0.15f
    .end array-data
.end method

.method public onVisualCheckBoxTouchEvent(Lmiuix/visual/check/VisualCheckBox;Landroid/view/MotionEvent;)V
    .locals 3

    .line 45
    iget-object p1, p0, Lmiuix/visual/check/BorderLayout;->iFolme:Lmiuix/animation/IFolme;

    if-eqz p1, :cond_0

    .line 46
    invoke-interface {p1}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object p1

    invoke-interface {p1, p2}, Lmiuix/animation/ITouchStyle;->onMotionEvent(Landroid/view/MotionEvent;)V

    .line 48
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_2

    :cond_1
    iget-object p1, p0, Lmiuix/visual/check/BorderLayout;->mBackGround:Landroid/graphics/drawable/Drawable;

    .line 49
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result p1

    const/16 p2, 0xff

    if-eq p1, p2, :cond_2

    .line 50
    iget-object p1, p0, Lmiuix/visual/check/BorderLayout;->mDrawableTarget:Lmiuix/visual/check/BorderLayout$DrawableTarget;

    if-eqz p1, :cond_2

    .line 51
    new-array p2, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, p2, v1

    invoke-static {p2}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    const-string v2, "alpha"

    aput-object v2, p2, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, p2, v0

    invoke-interface {p1, p2}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    :cond_2
    return-void
.end method
