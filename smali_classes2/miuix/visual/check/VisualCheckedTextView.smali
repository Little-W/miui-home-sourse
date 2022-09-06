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

.field private mChecked:Z

.field private mCheckedColor:I

.field private mColorProperty:Lmiuix/animation/property/ColorProperty;

.field private mListener:Lmiuix/animation/listener/TransitionListener;

.field private mUncheckedColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    .line 38
    new-array v1, v0, [I

    const/4 v2, 0x0

    const v3, 0x10100a0

    aput v3, v1, v2

    sput-object v1, Lmiuix/visual/check/VisualCheckedTextView;->CHECKED_STATE:[I

    .line 39
    new-array v0, v0, [I

    const v1, -0x10100a0

    aput v1, v0, v2

    sput-object v0, Lmiuix/visual/check/VisualCheckedTextView;->UNCHECKED_STATE:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 59
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
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

    .line 61
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

    .line 62
    new-instance p1, Lmiuix/visual/check/VisualCheckedTextView$InnerTransitionListener;

    invoke-direct {p1, p0}, Lmiuix/visual/check/VisualCheckedTextView$InnerTransitionListener;-><init>(Lmiuix/visual/check/VisualCheckedTextView;)V

    iput-object p1, p0, Lmiuix/visual/check/VisualCheckedTextView;->mListener:Lmiuix/animation/listener/TransitionListener;

    .line 63
    new-instance p1, Lmiuix/animation/property/ColorProperty;

    const-string p2, "checkedTextView"

    invoke-direct {p1, p2}, Lmiuix/animation/property/ColorProperty;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lmiuix/visual/check/VisualCheckedTextView;->mColorProperty:Lmiuix/animation/property/ColorProperty;

    const-string p1, "text_color_checked"

    .line 64
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lmiuix/animation/Folme;->clean([Ljava/lang/Object;)V

    const-string p1, "text_color_unchecked"

    .line 65
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lmiuix/animation/Folme;->clean([Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 66
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

    .line 67
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
.method public isChecked()Z
    .locals 1

    .line 82
    iget-boolean v0, p0, Lmiuix/visual/check/VisualCheckedTextView;->mChecked:Z

    return v0
.end method

.method public onChecked(Z)V
    .locals 0

    .line 87
    iput-boolean p1, p0, Lmiuix/visual/check/VisualCheckedTextView;->mChecked:Z

    if-eqz p1, :cond_0

    .line 89
    iget p1, p0, Lmiuix/visual/check/VisualCheckedTextView;->mCheckedColor:I

    invoke-virtual {p0, p1}, Lmiuix/visual/check/VisualCheckedTextView;->setTextColor(I)V

    goto :goto_0

    .line 91
    :cond_0
    iget p1, p0, Lmiuix/visual/check/VisualCheckedTextView;->mUncheckedColor:I

    invoke-virtual {p0, p1}, Lmiuix/visual/check/VisualCheckedTextView;->setTextColor(I)V

    :goto_0
    return-void
.end method

.method public onVisualCheckBoxTouchEvent(Lmiuix/visual/check/VisualCheckBox;Landroid/view/MotionEvent;)V
    .locals 5

    .line 72
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x6

    if-ne p1, p2, :cond_1

    .line 73
    invoke-virtual {p0}, Lmiuix/visual/check/VisualCheckedTextView;->isChecked()Z

    move-result p1

    const/4 p2, 0x3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-nez p1, :cond_0

    .line 74
    iget-object p1, p0, Lmiuix/visual/check/VisualCheckedTextView;->iCheckedStateStyle:Lmiuix/animation/IStateStyle;

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lmiuix/visual/check/VisualCheckedTextView;->mColorProperty:Lmiuix/animation/property/ColorProperty;

    aput-object v4, v3, v1

    iget v4, p0, Lmiuix/visual/check/VisualCheckedTextView;->mUncheckedColor:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-interface {p1, v3}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    new-array p2, p2, [Ljava/lang/Object;

    iget-object v3, p0, Lmiuix/visual/check/VisualCheckedTextView;->mColorProperty:Lmiuix/animation/property/ColorProperty;

    aput-object v3, p2, v1

    iget v1, p0, Lmiuix/visual/check/VisualCheckedTextView;->mCheckedColor:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v0

    iget-object v0, p0, Lmiuix/visual/check/VisualCheckedTextView;->mListener:Lmiuix/animation/listener/TransitionListener;

    aput-object v0, p2, v2

    invoke-interface {p1, p2}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    goto :goto_0

    .line 76
    :cond_0
    iget-object p1, p0, Lmiuix/visual/check/VisualCheckedTextView;->iUnCheckedStateStyle:Lmiuix/animation/IStateStyle;

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lmiuix/visual/check/VisualCheckedTextView;->mColorProperty:Lmiuix/animation/property/ColorProperty;

    aput-object v4, v3, v1

    iget v4, p0, Lmiuix/visual/check/VisualCheckedTextView;->mCheckedColor:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-interface {p1, v3}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    new-array p2, p2, [Ljava/lang/Object;

    iget-object v3, p0, Lmiuix/visual/check/VisualCheckedTextView;->mColorProperty:Lmiuix/animation/property/ColorProperty;

    aput-object v3, p2, v1

    iget v1, p0, Lmiuix/visual/check/VisualCheckedTextView;->mUncheckedColor:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v0

    iget-object v0, p0, Lmiuix/visual/check/VisualCheckedTextView;->mListener:Lmiuix/animation/listener/TransitionListener;

    aput-object v0, p2, v2

    invoke-interface {p1, p2}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    :cond_1
    :goto_0
    return-void
.end method
