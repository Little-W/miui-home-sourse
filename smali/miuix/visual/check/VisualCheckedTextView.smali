.class public Lmiuix/visual/check/VisualCheckedTextView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "VisualCheckedTextView.java"

# interfaces
.implements Lmiuix/visual/check/VisualCheckItem;


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

    .line 34
    new-array v1, v0, [I

    const/4 v2, 0x0

    const v3, 0x10100a0

    aput v3, v1, v2

    sput-object v1, Lmiuix/visual/check/VisualCheckedTextView;->CHECKED_STATE:[I

    .line 35
    new-array v0, v0, [I

    const v1, -0x10100a0

    aput v1, v0, v2

    sput-object v0, Lmiuix/visual/check/VisualCheckedTextView;->UNCHECKED_STATE:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 38
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
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

    .line 40
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

    .line 41
    new-instance p1, Lmiuix/visual/check/VisualCheckedTextView$1;

    invoke-direct {p1, p0}, Lmiuix/visual/check/VisualCheckedTextView$1;-><init>(Lmiuix/visual/check/VisualCheckedTextView;)V

    iput-object p1, p0, Lmiuix/visual/check/VisualCheckedTextView;->mListener:Lmiuix/animation/listener/TransitionListener;

    .line 49
    new-instance p1, Lmiuix/animation/property/ColorProperty;

    const-string p2, "checkedTextView"

    invoke-direct {p1, p2}, Lmiuix/animation/property/ColorProperty;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lmiuix/visual/check/VisualCheckedTextView;->mColorProperty:Lmiuix/animation/property/ColorProperty;

    const/4 p1, 0x1

    .line 50
    new-array p2, p1, [Ljava/lang/Object;

    const-string v0, "text_color_checked"

    const/4 v1, 0x0

    aput-object v0, p2, v1

    invoke-static {p2}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p2

    iput-object p2, p0, Lmiuix/visual/check/VisualCheckedTextView;->iCheckedStateStyle:Lmiuix/animation/IStateStyle;

    .line 51
    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "text_color_unchecked"

    aput-object p2, p1, v1

    invoke-static {p1}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    iput-object p1, p0, Lmiuix/visual/check/VisualCheckedTextView;->iUnCheckedStateStyle:Lmiuix/animation/IStateStyle;

    return-void
.end method


# virtual methods
.method public onChecked(Z)V
    .locals 5

    if-eqz p1, :cond_0

    .line 64
    iget p1, p0, Lmiuix/visual/check/VisualCheckedTextView;->mCheckedColor:I

    invoke-virtual {p0, p1}, Lmiuix/visual/check/VisualCheckedTextView;->setTextColor(I)V

    goto :goto_0

    .line 66
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

    .line 67
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
    .locals 5

    .line 56
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v0, :cond_1

    .line 57
    :cond_0
    iget-object p1, p0, Lmiuix/visual/check/VisualCheckedTextView;->iCheckedStateStyle:Lmiuix/animation/IStateStyle;

    const/4 p2, 0x2

    new-array v2, p2, [Ljava/lang/Object;

    iget-object v3, p0, Lmiuix/visual/check/VisualCheckedTextView;->mColorProperty:Lmiuix/animation/property/ColorProperty;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget v3, p0, Lmiuix/visual/check/VisualCheckedTextView;->mUncheckedColor:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-interface {p1, v2}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v2, p0, Lmiuix/visual/check/VisualCheckedTextView;->mColorProperty:Lmiuix/animation/property/ColorProperty;

    aput-object v2, v0, v4

    iget v2, p0, Lmiuix/visual/check/VisualCheckedTextView;->mCheckedColor:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v1, p0, Lmiuix/visual/check/VisualCheckedTextView;->mListener:Lmiuix/animation/listener/TransitionListener;

    aput-object v1, v0, p2

    invoke-interface {p1, v0}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    :cond_1
    return-void
.end method
