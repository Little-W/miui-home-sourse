.class public Lmiuix/visual/check/VisualCheckedTextView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "VisualCheckedTextView.java"

# interfaces
.implements Lmiuix/visual/check/VisualCheckItem;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/visual/check/VisualCheckedTextView$InnerTransitionListener;
    }
.end annotation


# static fields
.field private static CHECKED_STATE:[I

.field private static UNCHECKED_STATE:[I


# instance fields
.field private iCheckedStateStyle:Lmiuix/animation/IStateStyle;

.field private iUnCheckedStateStyle:Lmiuix/animation/IStateStyle;

.field private mCheckedColor:I

.field private mColorProperty:Lmiuix/animation/property/ColorProperty;

.field private mListener:Lmiuix/animation/listener/TransitionListener;

.field private mUncheckedColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    .line 36
    new-array v1, v0, [I

    const/4 v2, 0x0

    const v3, 0x10100a0

    aput v3, v1, v2

    sput-object v1, Lmiuix/visual/check/VisualCheckedTextView;->CHECKED_STATE:[I

    .line 37
    new-array v0, v0, [I

    const v1, -0x10100a0

    aput v1, v0, v2

    sput-object v0, Lmiuix/visual/check/VisualCheckedTextView;->UNCHECKED_STATE:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 57
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    invoke-virtual {p0}, Lmiuix/visual/check/VisualCheckedTextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object p1

    sget-object p2, Lmiuix/visual/check/VisualCheckedTextView;->UNCHECKED_STATE:[I

    invoke-virtual {p0}, Lmiuix/visual/check/VisualCheckedTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiuix/visualcheck/R$color;->visual_check_textview_unchecked_text_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    iput p1, p0, Lmiuix/visual/check/VisualCheckedTextView;->mUncheckedColor:I

    .line 59
    invoke-virtual {p0}, Lmiuix/visual/check/VisualCheckedTextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object p1

    sget-object p2, Lmiuix/visual/check/VisualCheckedTextView;->CHECKED_STATE:[I

    invoke-virtual {p0}, Lmiuix/visual/check/VisualCheckedTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiuix/visualcheck/R$color;->visual_check_textview_checked_text_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    iput p1, p0, Lmiuix/visual/check/VisualCheckedTextView;->mCheckedColor:I

    .line 60
    new-instance p1, Lmiuix/visual/check/VisualCheckedTextView$InnerTransitionListener;

    invoke-direct {p1, p0}, Lmiuix/visual/check/VisualCheckedTextView$InnerTransitionListener;-><init>(Lmiuix/visual/check/VisualCheckedTextView;)V

    iput-object p1, p0, Lmiuix/visual/check/VisualCheckedTextView;->mListener:Lmiuix/animation/listener/TransitionListener;

    .line 61
    new-instance p1, Lmiuix/animation/property/ColorProperty;

    const-string p2, "checkedTextView"

    invoke-direct {p1, p2}, Lmiuix/animation/property/ColorProperty;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lmiuix/visual/check/VisualCheckedTextView;->mColorProperty:Lmiuix/animation/property/ColorProperty;

    const-string p1, "text_color_checked"

    .line 62
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lmiuix/animation/Folme;->clean([Ljava/lang/Object;)V

    const-string p1, "text_color_unchecked"

    .line 63
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lmiuix/animation/Folme;->clean([Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 64
    new-array p2, p1, [Ljava/lang/Object;

    const-string v0, "text_color_checked"

    const/4 v1, 0x0

    aput-object v0, p2, v1

    invoke-static {p2}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p2

    const-wide/16 v2, 0x1

    invoke-interface {p2, v2, v3}, Lmiuix/animation/IStateStyle;->setFlags(J)Lmiuix/animation/IStateStyle;

    move-result-object p2

    iput-object p2, p0, Lmiuix/visual/check/VisualCheckedTextView;->iCheckedStateStyle:Lmiuix/animation/IStateStyle;

    .line 65
    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "text_color_unchecked"

    aput-object p2, p1, v1

    invoke-static {p1}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    invoke-interface {p1, v2, v3}, Lmiuix/animation/IStateStyle;->setFlags(J)Lmiuix/animation/IStateStyle;

    move-result-object p1

    iput-object p1, p0, Lmiuix/visual/check/VisualCheckedTextView;->iUnCheckedStateStyle:Lmiuix/animation/IStateStyle;

    return-void
.end method


# virtual methods
.method public onChecked(Z)V
    .locals 5

    if-eqz p1, :cond_0

    .line 78
    iget p1, p0, Lmiuix/visual/check/VisualCheckedTextView;->mCheckedColor:I

    invoke-virtual {p0, p1}, Lmiuix/visual/check/VisualCheckedTextView;->setTextColor(I)V

    goto :goto_0

    .line 80
    :cond_0
    iget-object p1, p0, Lmiuix/visual/check/VisualCheckedTextView;->iUnCheckedStateStyle:Lmiuix/animation/IStateStyle;

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    iget-object v2, p0, Lmiuix/visual/check/VisualCheckedTextView;->mColorProperty:Lmiuix/animation/property/ColorProperty;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lmiuix/visual/check/VisualCheckedTextView;->mCheckedColor:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-interface {p1, v1}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lmiuix/visual/check/VisualCheckedTextView;->mColorProperty:Lmiuix/animation/property/ColorProperty;

    aput-object v2, v1, v3

    iget v2, p0, Lmiuix/visual/check/VisualCheckedTextView;->mUncheckedColor:I

    .line 81
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    iget-object v2, p0, Lmiuix/visual/check/VisualCheckedTextView;->mListener:Lmiuix/animation/listener/TransitionListener;

    aput-object v2, v1, v0

    invoke-interface {p1, v1}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    :goto_0
    return-void
.end method

.method public onVisualCheckBoxTouchEvent(Lmiuix/visual/check/VisualCheckBox;Landroid/view/MotionEvent;)V
    .locals 4

    .line 70
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 71
    iget-object p1, p0, Lmiuix/visual/check/VisualCheckedTextView;->iCheckedStateStyle:Lmiuix/animation/IStateStyle;

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    iget-object v2, p0, Lmiuix/visual/check/VisualCheckedTextView;->mColorProperty:Lmiuix/animation/property/ColorProperty;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lmiuix/visual/check/VisualCheckedTextView;->mUncheckedColor:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, p2

    invoke-interface {p1, v1}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lmiuix/visual/check/VisualCheckedTextView;->mColorProperty:Lmiuix/animation/property/ColorProperty;

    aput-object v2, v1, v3

    iget v2, p0, Lmiuix/visual/check/VisualCheckedTextView;->mCheckedColor:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, p2

    iget-object p2, p0, Lmiuix/visual/check/VisualCheckedTextView;->mListener:Lmiuix/animation/listener/TransitionListener;

    aput-object p2, v1, v0

    invoke-interface {p1, v1}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    :cond_0
    return-void
.end method
