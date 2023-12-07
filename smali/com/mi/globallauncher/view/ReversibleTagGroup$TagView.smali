.class Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;
.super Landroidx/appcompat/widget/AppCompatTextView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/globallauncher/view/ReversibleTagGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TagView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView$ZanyInputConnection;
    }
.end annotation


# static fields
.field private static final CHECKED_MARKER_OFFSET:I = 0x3

.field private static final CHECKED_MARKER_STROKE_WIDTH:I = 0x4

.field public static final STATE_INPUT:I = 0x2

.field public static final STATE_NORMAL:I = 0x1


# instance fields
.field private isChecked:Z

.field private isPressed:Z

.field private mBackgroundPaint:Landroid/graphics/Paint;

.field private mBorderPaint:Landroid/graphics/Paint;

.field private mBorderPath:Landroid/graphics/Path;

.field private mCheckedMarkerBound:Landroid/graphics/RectF;

.field private mCheckedMarkerPaint:Landroid/graphics/Paint;

.field private mHorizontalLeftBlankFillRectF:Landroid/graphics/RectF;

.field private mHorizontalRightBlankFillRectF:Landroid/graphics/RectF;

.field private mLeftBottomCornerRectF:Landroid/graphics/RectF;

.field private mLeftTopCornerRectF:Landroid/graphics/RectF;

.field private mOutRect:Landroid/graphics/Rect;

.field private mPathEffect:Landroid/graphics/PathEffect;

.field private mRightBottomCornerRectF:Landroid/graphics/RectF;

.field private mRightTopCornerRectF:Landroid/graphics/RectF;

.field private mState:I

.field private mVerticalBlankFillRectF:Landroid/graphics/RectF;

.field final synthetic this$0:Lcom/mi/globallauncher/view/ReversibleTagGroup;


# direct methods
.method public constructor <init>(Lcom/mi/globallauncher/view/ReversibleTagGroup;Landroid/content/Context;ILjava/lang/CharSequence;)V
    .locals 6

    iput-object p1, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->this$0:Lcom/mi/globallauncher/view/ReversibleTagGroup;

    invoke-direct {p0, p2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->isChecked:Z

    iput-boolean p2, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->isPressed:Z

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->mBorderPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->mBackgroundPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->mCheckedMarkerPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->mLeftTopCornerRectF:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->mLeftBottomCornerRectF:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->mRightTopCornerRectF:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->mRightBottomCornerRectF:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->mHorizontalLeftBlankFillRectF:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->mHorizontalRightBlankFillRectF:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->mVerticalBlankFillRectF:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->mCheckedMarkerBound:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->mOutRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->mBorderPath:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/DashPathEffect;

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    iput-object v0, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->mPathEffect:Landroid/graphics/PathEffect;

    iget-object v0, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->mBorderPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->mBorderPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->this$0:Lcom/mi/globallauncher/view/ReversibleTagGroup;

    invoke-static {v3}, Lcom/mi/globallauncher/view/ReversibleTagGroup;->access$400(Lcom/mi/globallauncher/view/ReversibleTagGroup;)F

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->mBackgroundPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->mCheckedMarkerPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->mCheckedMarkerPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x40800000    # 4.0f

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->mCheckedMarkerPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->this$0:Lcom/mi/globallauncher/view/ReversibleTagGroup;

    invoke-static {v3}, Lcom/mi/globallauncher/view/ReversibleTagGroup;->access$500(Lcom/mi/globallauncher/view/ReversibleTagGroup;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    invoke-static {p1}, Lcom/mi/globallauncher/view/ReversibleTagGroup;->access$600(Lcom/mi/globallauncher/view/ReversibleTagGroup;)I

    move-result v0

    invoke-static {p1}, Lcom/mi/globallauncher/view/ReversibleTagGroup;->access$700(Lcom/mi/globallauncher/view/ReversibleTagGroup;)I

    move-result v3

    invoke-static {p1}, Lcom/mi/globallauncher/view/ReversibleTagGroup;->access$600(Lcom/mi/globallauncher/view/ReversibleTagGroup;)I

    move-result v4

    invoke-static {p1}, Lcom/mi/globallauncher/view/ReversibleTagGroup;->access$700(Lcom/mi/globallauncher/view/ReversibleTagGroup;)I

    move-result v5

    invoke-virtual {p0, v0, v3, v4, v5}, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->setPadding(IIII)V

    new-instance v0, Lcom/mi/globallauncher/view/ReversibleTagGroup$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v0, v3, v3}, Lcom/mi/globallauncher/view/ReversibleTagGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->setGravity(I)V

    invoke-virtual {p0, p4}, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p1}, Lcom/mi/globallauncher/view/ReversibleTagGroup;->access$800(Lcom/mi/globallauncher/view/ReversibleTagGroup;)F

    move-result p4

    invoke-virtual {p0, p2, p4}, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->setTextSize(IF)V

    iput p3, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->mState:I

    invoke-static {p1}, Lcom/mi/globallauncher/view/ReversibleTagGroup;->access$200(Lcom/mi/globallauncher/view/ReversibleTagGroup;)Z

    move-result p4

    invoke-virtual {p0, p4}, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->setClickable(Z)V

    if-ne p3, v2, :cond_0

    move p4, v1

    goto :goto_0

    :cond_0
    move p4, p2

    :goto_0
    invoke-virtual {p0, p4}, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->setFocusable(Z)V

    if-ne p3, v2, :cond_1

    move p2, v1

    :cond_1
    invoke-virtual {p0, p2}, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->setFocusableInTouchMode(Z)V

    const/4 p2, 0x0

    if-ne p3, v2, :cond_2

    invoke-static {p1}, Lcom/mi/globallauncher/view/ReversibleTagGroup;->access$900(Lcom/mi/globallauncher/view/ReversibleTagGroup;)Ljava/lang/CharSequence;

    move-result-object p4

    goto :goto_1

    :cond_2
    move-object p4, p2

    :goto_1
    invoke-virtual {p0, p4}, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->setHint(Ljava/lang/CharSequence;)V

    if-ne p3, v2, :cond_3

    invoke-static {}, Landroid/text/method/ArrowKeyMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p2

    :cond_3
    invoke-virtual {p0, p2}, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    new-instance p2, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView$1;

    invoke-direct {p2, p0, p1, p3}, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView$1;-><init>(Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;Lcom/mi/globallauncher/view/ReversibleTagGroup;I)V

    invoke-virtual {p0, p2}, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    if-ne p3, v2, :cond_4

    invoke-virtual {p0}, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->requestFocus()Z

    new-instance p2, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView$2;

    invoke-direct {p2, p0, p1}, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView$2;-><init>(Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;Lcom/mi/globallauncher/view/ReversibleTagGroup;)V

    invoke-virtual {p0, p2}, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    new-instance p2, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView$3;

    invoke-direct {p2, p0, p1}, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView$3;-><init>(Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;Lcom/mi/globallauncher/view/ReversibleTagGroup;)V

    invoke-virtual {p0, p2}, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    new-instance p2, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView$4;

    invoke-direct {p2, p0, p1}, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView$4;-><init>(Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;Lcom/mi/globallauncher/view/ReversibleTagGroup;)V

    invoke-virtual {p0, p2}, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_4
    invoke-direct {p0}, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->invalidatePaint()V

    return-void

    :array_0
    .array-data 4
        0x41200000    # 10.0f
        0x40a00000    # 5.0f
    .end array-data
.end method

.method static synthetic access$000(Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;)I
    .locals 0

    iget p0, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->mState:I

    return p0
.end method

.method static synthetic access$100(Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->isChecked:Z

    return p0
.end method

.method private invalidatePaint()V
    .locals 2

    iget-object v0, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->this$0:Lcom/mi/globallauncher/view/ReversibleTagGroup;

    invoke-static {v0}, Lcom/mi/globallauncher/view/ReversibleTagGroup;->access$200(Lcom/mi/globallauncher/view/ReversibleTagGroup;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->mBorderPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->this$0:Lcom/mi/globallauncher/view/ReversibleTagGroup;

    invoke-static {v1}, Lcom/mi/globallauncher/view/ReversibleTagGroup;->access$1100(Lcom/mi/globallauncher/view/ReversibleTagGroup;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->mBorderPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->mPathEffect:Landroid/graphics/PathEffect;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    iget-object v0, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->mBackgroundPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->this$0:Lcom/mi/globallauncher/view/ReversibleTagGroup;

    invoke-static {v1}, Lcom/mi/globallauncher/view/ReversibleTagGroup;->access$1200(Lcom/mi/globallauncher/view/ReversibleTagGroup;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->this$0:Lcom/mi/globallauncher/view/ReversibleTagGroup;

    invoke-static {v0}, Lcom/mi/globallauncher/view/ReversibleTagGroup;->access$1300(Lcom/mi/globallauncher/view/ReversibleTagGroup;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->setHintTextColor(I)V

    iget-object v0, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->this$0:Lcom/mi/globallauncher/view/ReversibleTagGroup;

    invoke-static {v0}, Lcom/mi/globallauncher/view/ReversibleTagGroup;->access$1400(Lcom/mi/globallauncher/view/ReversibleTagGroup;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->setTextColor(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->mBorderPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    iget-boolean v0, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->isChecked:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->mBorderPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->this$0:Lcom/mi/globallauncher/view/ReversibleTagGroup;

    invoke-static {v1}, Lcom/mi/globallauncher/view/ReversibleTagGroup;->access$1500(Lcom/mi/globallauncher/view/ReversibleTagGroup;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->mBackgroundPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->this$0:Lcom/mi/globallauncher/view/ReversibleTagGroup;

    invoke-static {v1}, Lcom/mi/globallauncher/view/ReversibleTagGroup;->access$1600(Lcom/mi/globallauncher/view/ReversibleTagGroup;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->this$0:Lcom/mi/globallauncher/view/ReversibleTagGroup;

    invoke-static {v0}, Lcom/mi/globallauncher/view/ReversibleTagGroup;->access$1700(Lcom/mi/globallauncher/view/ReversibleTagGroup;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->setTextColor(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->mBorderPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->this$0:Lcom/mi/globallauncher/view/ReversibleTagGroup;

    invoke-static {v1}, Lcom/mi/globallauncher/view/ReversibleTagGroup;->access$1800(Lcom/mi/globallauncher/view/ReversibleTagGroup;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->mBackgroundPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->this$0:Lcom/mi/globallauncher/view/ReversibleTagGroup;

    invoke-static {v1}, Lcom/mi/globallauncher/view/ReversibleTagGroup;->access$1200(Lcom/mi/globallauncher/view/ReversibleTagGroup;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->this$0:Lcom/mi/globallauncher/view/ReversibleTagGroup;

    invoke-static {v0}, Lcom/mi/globallauncher/view/ReversibleTagGroup;->access$1900(Lcom/mi/globallauncher/view/ReversibleTagGroup;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->setTextColor(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->mBorderPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->this$0:Lcom/mi/globallauncher/view/ReversibleTagGroup;

    invoke-static {v1}, Lcom/mi/globallauncher/view/ReversibleTagGroup;->access$1800(Lcom/mi/globallauncher/view/ReversibleTagGroup;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->mBackgroundPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->this$0:Lcom/mi/globallauncher/view/ReversibleTagGroup;

    invoke-static {v1}, Lcom/mi/globallauncher/view/ReversibleTagGroup;->access$1200(Lcom/mi/globallauncher/view/ReversibleTagGroup;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->this$0:Lcom/mi/globallauncher/view/ReversibleTagGroup;

    invoke-static {v0}, Lcom/mi/globallauncher/view/ReversibleTagGroup;->access$1900(Lcom/mi/globallauncher/view/ReversibleTagGroup;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->setTextColor(I)V

    :goto_0
    iget-boolean v0, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->isPressed:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->mBackgroundPaint:Landroid/graphics/Paint;

    iget-object p0, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->this$0:Lcom/mi/globallauncher/view/ReversibleTagGroup;

    invoke-static {p0}, Lcom/mi/globallauncher/view/ReversibleTagGroup;->access$2000(Lcom/mi/globallauncher/view/ReversibleTagGroup;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->mBackgroundPaint:Landroid/graphics/Paint;

    iget-object p0, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->this$0:Lcom/mi/globallauncher/view/ReversibleTagGroup;

    invoke-static {p0}, Lcom/mi/globallauncher/view/ReversibleTagGroup;->access$1200(Lcom/mi/globallauncher/view/ReversibleTagGroup;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColor(I)V

    :goto_1
    return-void
.end method


# virtual methods
.method public endInput()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->setFocusable(Z)V

    invoke-virtual {p0, v0}, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->setFocusableInTouchMode(Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->setHint(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v0}, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->mState:I

    invoke-direct {p0}, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->invalidatePaint()V

    invoke-virtual {p0}, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->requestLayout()V

    return-void
.end method

.method protected getDefaultEditable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isInputAvailable()Z
    .locals 1

    invoke-virtual {p0}, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 2

    new-instance v0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView$ZanyInputConnection;

    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView$ZanyInputConnection;-><init>(Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;Landroid/view/inputmethod/InputConnection;Z)V

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    iget-object v1, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->mLeftTopCornerRectF:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->mBackgroundPaint:Landroid/graphics/Paint;

    const/high16 v2, -0x3ccc0000    # -180.0f

    const/high16 v3, 0x42b40000    # 90.0f

    const/4 v4, 0x1

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget-object v7, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->mLeftBottomCornerRectF:Landroid/graphics/RectF;

    iget-object v11, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->mBackgroundPaint:Landroid/graphics/Paint;

    const/high16 v8, -0x3c790000    # -270.0f

    const/high16 v9, 0x42b40000    # 90.0f

    const/4 v10, 0x1

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->mRightTopCornerRectF:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->mBackgroundPaint:Landroid/graphics/Paint;

    const/high16 v2, -0x3d4c0000    # -90.0f

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget-object v7, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->mRightBottomCornerRectF:Landroid/graphics/RectF;

    iget-object v11, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->mBackgroundPaint:Landroid/graphics/Paint;

    const/4 v8, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->mHorizontalLeftBlankFillRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->mHorizontalRightBlankFillRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->mVerticalBlankFillRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-boolean v0, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->isChecked:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/high16 v0, 0x42340000    # 45.0f

    iget-object v1, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->mCheckedMarkerBound:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v2, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->mCheckedMarkerBound:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v0, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->mCheckedMarkerBound:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->mCheckedMarkerBound:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    iget-object v0, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->mCheckedMarkerBound:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->mCheckedMarkerBound:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    iget-object v6, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->mCheckedMarkerPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->mCheckedMarkerBound:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget-object v0, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->mCheckedMarkerBound:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->mCheckedMarkerBound:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    iget-object v0, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->mCheckedMarkerBound:Landroid/graphics/RectF;

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v6, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->mCheckedMarkerPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_0
    iget-object v0, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->mBorderPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-super/range {p0 .. p4}, Landroidx/appcompat/widget/AppCompatTextView;->onSizeChanged(IIII)V

    iget-object v2, v0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->this$0:Lcom/mi/globallauncher/view/ReversibleTagGroup;

    invoke-static {v2}, Lcom/mi/globallauncher/view/ReversibleTagGroup;->access$400(Lcom/mi/globallauncher/view/ReversibleTagGroup;)F

    move-result v2

    float-to-int v2, v2

    iget-object v3, v0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->this$0:Lcom/mi/globallauncher/view/ReversibleTagGroup;

    invoke-static {v3}, Lcom/mi/globallauncher/view/ReversibleTagGroup;->access$400(Lcom/mi/globallauncher/view/ReversibleTagGroup;)F

    move-result v3

    float-to-int v3, v3

    add-int v4, v2, p1

    int-to-float v4, v4

    iget-object v5, v0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->this$0:Lcom/mi/globallauncher/view/ReversibleTagGroup;

    invoke-static {v5}, Lcom/mi/globallauncher/view/ReversibleTagGroup;->access$400(Lcom/mi/globallauncher/view/ReversibleTagGroup;)F

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    float-to-int v4, v4

    add-int v5, v3, v1

    int-to-float v5, v5

    iget-object v7, v0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->this$0:Lcom/mi/globallauncher/view/ReversibleTagGroup;

    invoke-static {v7}, Lcom/mi/globallauncher/view/ReversibleTagGroup;->access$400(Lcom/mi/globallauncher/view/ReversibleTagGroup;)F

    move-result v7

    mul-float/2addr v7, v6

    sub-float/2addr v5, v7

    float-to-int v5, v5

    sub-int v7, v5, v3

    div-int/lit8 v8, v7, 0x2

    iget-object v9, v0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->mLeftTopCornerRectF:Landroid/graphics/RectF;

    int-to-float v10, v2

    int-to-float v11, v3

    add-int v12, v2, v8

    int-to-float v12, v12

    add-int v13, v3, v8

    int-to-float v14, v13

    invoke-virtual {v9, v10, v11, v12, v14}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v9, v0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->mLeftBottomCornerRectF:Landroid/graphics/RectF;

    sub-int v15, v5, v8

    int-to-float v6, v15

    move/from16 p3, v7

    int-to-float v7, v5

    invoke-virtual {v9, v10, v6, v12, v7}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v9, v0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->mRightTopCornerRectF:Landroid/graphics/RectF;

    sub-int v12, v4, v8

    int-to-float v12, v12

    move/from16 p4, v15

    int-to-float v15, v4

    invoke-virtual {v9, v12, v11, v15, v14}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v9, v0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->mRightBottomCornerRectF:Landroid/graphics/RectF;

    invoke-virtual {v9, v12, v6, v15, v7}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v6, v0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->mBorderPath:Landroid/graphics/Path;

    invoke-virtual {v6}, Landroid/graphics/Path;->reset()V

    iget-object v6, v0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->mBorderPath:Landroid/graphics/Path;

    iget-object v9, v0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->mLeftTopCornerRectF:Landroid/graphics/RectF;

    const/high16 v12, 0x42b40000    # 90.0f

    const/high16 v14, -0x3ccc0000    # -180.0f

    invoke-virtual {v6, v9, v14, v12}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    iget-object v6, v0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->mBorderPath:Landroid/graphics/Path;

    iget-object v9, v0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->mLeftBottomCornerRectF:Landroid/graphics/RectF;

    const/high16 v14, -0x3c790000    # -270.0f

    invoke-virtual {v6, v9, v14, v12}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    iget-object v6, v0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->mBorderPath:Landroid/graphics/Path;

    iget-object v9, v0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->mRightTopCornerRectF:Landroid/graphics/RectF;

    const/high16 v14, -0x3d4c0000    # -90.0f

    invoke-virtual {v6, v9, v14, v12}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    iget-object v6, v0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->mBorderPath:Landroid/graphics/Path;

    iget-object v9, v0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->mRightBottomCornerRectF:Landroid/graphics/RectF;

    const/4 v14, 0x0

    invoke-virtual {v6, v9, v14, v12}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    int-to-float v6, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v6, v8

    float-to-int v6, v6

    iget-object v8, v0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->mBorderPath:Landroid/graphics/Path;

    add-int/2addr v2, v6

    int-to-float v2, v2

    invoke-virtual {v8, v2, v11}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v8, v0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->mBorderPath:Landroid/graphics/Path;

    sub-int v9, v4, v6

    int-to-float v9, v9

    invoke-virtual {v8, v9, v11}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v8, v0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->mBorderPath:Landroid/graphics/Path;

    invoke-virtual {v8, v2, v7}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v8, v0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->mBorderPath:Landroid/graphics/Path;

    invoke-virtual {v8, v9, v7}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v8, v0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->mBorderPath:Landroid/graphics/Path;

    add-int/2addr v3, v6

    int-to-float v3, v3

    invoke-virtual {v8, v10, v3}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v8, v0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->mBorderPath:Landroid/graphics/Path;

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {v8, v10, v5}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v6, v0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->mBorderPath:Landroid/graphics/Path;

    invoke-virtual {v6, v15, v3}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v6, v0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->mBorderPath:Landroid/graphics/Path;

    invoke-virtual {v6, v15, v5}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v6, v0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->mHorizontalLeftBlankFillRectF:Landroid/graphics/RectF;

    invoke-virtual {v6, v10, v3, v2, v5}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v6, v0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->mHorizontalRightBlankFillRectF:Landroid/graphics/RectF;

    invoke-virtual {v6, v9, v3, v15, v5}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v3, v0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->mVerticalBlankFillRectF:Landroid/graphics/RectF;

    invoke-virtual {v3, v2, v11, v9, v7}, Landroid/graphics/RectF;->set(FFFF)V

    int-to-float v1, v1

    const/high16 v2, 0x40200000    # 2.5f

    div-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v3, v0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->mCheckedMarkerBound:Landroid/graphics/RectF;

    sub-int v5, v4, v1

    iget-object v6, v0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->this$0:Lcom/mi/globallauncher/view/ReversibleTagGroup;

    invoke-static {v6}, Lcom/mi/globallauncher/view/ReversibleTagGroup;->access$600(Lcom/mi/globallauncher/view/ReversibleTagGroup;)I

    move-result v6

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x3

    int-to-float v5, v5

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v13, v1

    int-to-float v6, v13

    iget-object v7, v0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->this$0:Lcom/mi/globallauncher/view/ReversibleTagGroup;

    invoke-static {v7}, Lcom/mi/globallauncher/view/ReversibleTagGroup;->access$600(Lcom/mi/globallauncher/view/ReversibleTagGroup;)I

    move-result v7

    sub-int/2addr v4, v7

    add-int/lit8 v4, v4, 0x3

    int-to-float v4, v4

    add-int v15, p4, v1

    int-to-float v1, v15

    invoke-virtual {v3, v5, v6, v4, v1}, Landroid/graphics/RectF;->set(FFFF)V

    iget-boolean v1, v0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->isChecked:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->this$0:Lcom/mi/globallauncher/view/ReversibleTagGroup;

    invoke-static {v1}, Lcom/mi/globallauncher/view/ReversibleTagGroup;->access$600(Lcom/mi/globallauncher/view/ReversibleTagGroup;)I

    move-result v1

    iget-object v3, v0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->this$0:Lcom/mi/globallauncher/view/ReversibleTagGroup;

    invoke-static {v3}, Lcom/mi/globallauncher/view/ReversibleTagGroup;->access$700(Lcom/mi/globallauncher/view/ReversibleTagGroup;)I

    move-result v3

    iget-object v4, v0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->this$0:Lcom/mi/globallauncher/view/ReversibleTagGroup;

    invoke-static {v4}, Lcom/mi/globallauncher/view/ReversibleTagGroup;->access$600(Lcom/mi/globallauncher/view/ReversibleTagGroup;)I

    move-result v4

    int-to-float v4, v4

    move/from16 v5, p3

    int-to-float v5, v5

    div-float/2addr v5, v2

    add-float/2addr v4, v5

    const/high16 v2, 0x40400000    # 3.0f

    add-float/2addr v4, v2

    float-to-int v2, v4

    iget-object v4, v0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->this$0:Lcom/mi/globallauncher/view/ReversibleTagGroup;

    invoke-static {v4}, Lcom/mi/globallauncher/view/ReversibleTagGroup;->access$700(Lcom/mi/globallauncher/view/ReversibleTagGroup;)I

    move-result v4

    invoke-virtual {v0, v1, v3, v2, v4}, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->setPadding(IIII)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    iget v0, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    const/4 v3, 0x0

    if-eq v0, v2, :cond_4

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    iput-boolean v3, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->isPressed:Z

    invoke-direct {p0}, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->invalidatePaint()V

    invoke-virtual {p0}, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->invalidate()V

    goto :goto_0

    :cond_2
    iput-boolean v3, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->isPressed:Z

    invoke-direct {p0}, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->invalidatePaint()V

    invoke-virtual {p0}, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->invalidate()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->mOutRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_6

    iput-boolean v3, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->isPressed:Z

    invoke-direct {p0}, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->invalidatePaint()V

    invoke-virtual {p0}, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->invalidate()V

    goto :goto_0

    :cond_4
    iput-boolean v3, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->isPressed:Z

    invoke-direct {p0}, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->invalidatePaint()V

    invoke-virtual {p0}, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->invalidate()V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->mOutRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->getDrawingRect(Landroid/graphics/Rect;)V

    iput-boolean v2, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->isPressed:Z

    invoke-direct {p0}, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->invalidatePaint()V

    invoke-virtual {p0}, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->invalidate()V

    :cond_6
    :goto_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public setChecked(Z)V
    .locals 4

    iput-boolean p1, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->isChecked:Z

    iget-object p1, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->this$0:Lcom/mi/globallauncher/view/ReversibleTagGroup;

    invoke-static {p1}, Lcom/mi/globallauncher/view/ReversibleTagGroup;->access$600(Lcom/mi/globallauncher/view/ReversibleTagGroup;)I

    move-result p1

    iget-object v0, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->this$0:Lcom/mi/globallauncher/view/ReversibleTagGroup;

    invoke-static {v0}, Lcom/mi/globallauncher/view/ReversibleTagGroup;->access$700(Lcom/mi/globallauncher/view/ReversibleTagGroup;)I

    move-result v0

    iget-boolean v1, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->isChecked:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->this$0:Lcom/mi/globallauncher/view/ReversibleTagGroup;

    invoke-static {v1}, Lcom/mi/globallauncher/view/ReversibleTagGroup;->access$600(Lcom/mi/globallauncher/view/ReversibleTagGroup;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40200000    # 2.5f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    const/high16 v2, 0x40400000    # 3.0f

    add-float/2addr v1, v2

    float-to-int v1, v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->this$0:Lcom/mi/globallauncher/view/ReversibleTagGroup;

    invoke-static {v1}, Lcom/mi/globallauncher/view/ReversibleTagGroup;->access$600(Lcom/mi/globallauncher/view/ReversibleTagGroup;)I

    move-result v1

    :goto_0
    iget-object v2, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->this$0:Lcom/mi/globallauncher/view/ReversibleTagGroup;

    invoke-static {v2}, Lcom/mi/globallauncher/view/ReversibleTagGroup;->access$700(Lcom/mi/globallauncher/view/ReversibleTagGroup;)I

    move-result v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->setPadding(IIII)V

    invoke-direct {p0}, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->invalidatePaint()V

    return-void
.end method
