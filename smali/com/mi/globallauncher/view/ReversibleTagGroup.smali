.class public Lcom/mi/globallauncher/view/ReversibleTagGroup;
.super Landroid/view/ViewGroup;
.source "ReversibleTagGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;,
        Lcom/mi/globallauncher/view/ReversibleTagGroup$InternalTagClickListener;,
        Lcom/mi/globallauncher/view/ReversibleTagGroup$SavedState;,
        Lcom/mi/globallauncher/view/ReversibleTagGroup$LayoutParams;,
        Lcom/mi/globallauncher/view/ReversibleTagGroup$OnTagClickListener;,
        Lcom/mi/globallauncher/view/ReversibleTagGroup$OnTagChangeListener;
    }
.end annotation


# instance fields
.field private backgroundColor:I

.field private borderColor:I

.field private borderStrokeWidth:F

.field private checkedBackgroundColor:I

.field private checkedBorderColor:I

.field private checkedMarkerColor:I

.field private checkedTextColor:I

.field private dashBorderColor:I

.field private final default_background_color:I

.field private final default_border_color:I

.field private final default_border_stroke_width:F

.field private final default_checked_background_color:I

.field private final default_checked_border_color:I

.field private final default_checked_marker_color:I

.field private final default_checked_text_color:I

.field private final default_dash_border_color:I

.field private final default_horizontal_padding:F

.field private final default_horizontal_spacing:F

.field private final default_input_hint_color:I

.field private final default_input_text_color:I

.field private final default_max_row_count:I

.field private final default_pressed_background_color:I

.field private final default_reverse_layout:Z

.field private final default_text_color:I

.field private final default_text_size:F

.field private final default_vertical_padding:F

.field private final default_vertical_spacing:F

.field private horizontalPadding:I

.field private horizontalSpacing:I

.field private inputHint:Ljava/lang/CharSequence;

.field private inputHintColor:I

.field private inputTextColor:I

.field private isAppendMode:Z

.field private mInternalTagClickListener:Lcom/mi/globallauncher/view/ReversibleTagGroup$InternalTagClickListener;

.field private mOnTagChangeListener:Lcom/mi/globallauncher/view/ReversibleTagGroup$OnTagChangeListener;

.field private mOnTagClickListener:Lcom/mi/globallauncher/view/ReversibleTagGroup$OnTagClickListener;

.field private maxRowCount:I

.field private pressedBackgroundColor:I

.field private reverseLayout:Z

.field private textColor:I

.field private textSize:F

.field private verticalPadding:I

.field private verticalSpacing:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 134
    invoke-direct {p0, p1, v0}, Lcom/mi/globallauncher/view/ReversibleTagGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 138
    invoke-direct {p0, p1, p2, v0}, Lcom/mi/globallauncher/view/ReversibleTagGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    .line 142
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 v0, 0x20

    const/16 v1, 0xc1

    const/16 v2, 0x49

    .line 41
    invoke-static {v2, v1, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    iput v3, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup;->default_border_color:I

    .line 42
    invoke-static {v2, v1, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    iput v3, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup;->default_text_color:I

    const/4 v3, -0x1

    .line 43
    iput v3, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup;->default_background_color:I

    const/16 v4, 0xaa

    .line 44
    invoke-static {v4, v4, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    iput v4, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup;->default_dash_border_color:I

    const/4 v4, 0x0

    const/16 v5, 0x80

    .line 45
    invoke-static {v5, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    iput v5, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup;->default_input_hint_color:I

    const/16 v5, 0xde

    .line 46
    invoke-static {v5, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    iput v5, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup;->default_input_text_color:I

    .line 47
    invoke-static {v2, v1, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    iput v5, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup;->default_checked_border_color:I

    .line 48
    iput v3, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup;->default_checked_text_color:I

    .line 49
    iput v3, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup;->default_checked_marker_color:I

    .line 50
    invoke-static {v2, v1, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup;->default_checked_background_color:I

    const/16 v0, 0xed

    .line 51
    invoke-static {v0, v0, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup;->default_pressed_background_color:I

    .line 125
    new-instance v0, Lcom/mi/globallauncher/view/ReversibleTagGroup$InternalTagClickListener;

    invoke-direct {v0, p0}, Lcom/mi/globallauncher/view/ReversibleTagGroup$InternalTagClickListener;-><init>(Lcom/mi/globallauncher/view/ReversibleTagGroup;)V

    iput-object v0, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup;->mInternalTagClickListener:Lcom/mi/globallauncher/view/ReversibleTagGroup$InternalTagClickListener;

    const/high16 v0, 0x3f000000    # 0.5f

    .line 144
    invoke-virtual {p0, v0}, Lcom/mi/globallauncher/view/ReversibleTagGroup;->dp2px(F)F

    move-result v0

    iput v0, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup;->default_border_stroke_width:F

    const/high16 v0, 0x41500000    # 13.0f

    .line 145
    invoke-virtual {p0, v0}, Lcom/mi/globallauncher/view/ReversibleTagGroup;->sp2px(F)F

    move-result v0

    iput v0, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup;->default_text_size:F

    const/high16 v0, 0x41000000    # 8.0f

    .line 146
    invoke-virtual {p0, v0}, Lcom/mi/globallauncher/view/ReversibleTagGroup;->dp2px(F)F

    move-result v0

    iput v0, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup;->default_horizontal_spacing:F

    const/high16 v0, 0x40800000    # 4.0f

    .line 147
    invoke-virtual {p0, v0}, Lcom/mi/globallauncher/view/ReversibleTagGroup;->dp2px(F)F

    move-result v0

    iput v0, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup;->default_vertical_spacing:F

    const/high16 v0, 0x41400000    # 12.0f

    .line 148
    invoke-virtual {p0, v0}, Lcom/mi/globallauncher/view/ReversibleTagGroup;->dp2px(F)F

    move-result v0

    iput v0, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup;->default_horizontal_padding:F

    const/high16 v0, 0x40400000    # 3.0f

    .line 149
    invoke-virtual {p0, v0}, Lcom/mi/globallauncher/view/ReversibleTagGroup;->dp2px(F)F

    move-result v0

    iput v0, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup;->default_vertical_padding:F

    .line 150
    iput-boolean v4, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup;->default_reverse_layout:Z

    const/4 v0, 0x3

    .line 151
    iput v0, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup;->default_max_row_count:I

    .line 153
    sget-object v0, Lcom/mi/globallauncher/R$styleable;->ReversibleTagGroup:[I

    sget v1, Lcom/mi/globallauncher/R$style;->ReversibleTagGroup:I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 155
    :try_start_0
    sget p2, Lcom/mi/globallauncher/R$styleable;->ReversibleTagGroup_rtg_isAppendMode:I

    invoke-virtual {p1, p2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup;->isAppendMode:Z

    .line 156
    sget p2, Lcom/mi/globallauncher/R$styleable;->ReversibleTagGroup_rtg_inputHint:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup;->inputHint:Ljava/lang/CharSequence;

    .line 157
    sget p2, Lcom/mi/globallauncher/R$styleable;->ReversibleTagGroup_rtg_borderColor:I

    iget p3, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup;->default_border_color:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup;->borderColor:I

    .line 158
    sget p2, Lcom/mi/globallauncher/R$styleable;->ReversibleTagGroup_rtg_textColor:I

    iget p3, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup;->default_text_color:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup;->textColor:I

    .line 159
    sget p2, Lcom/mi/globallauncher/R$styleable;->ReversibleTagGroup_rtg_backgroundColor:I

    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup;->backgroundColor:I

    .line 160
    sget p2, Lcom/mi/globallauncher/R$styleable;->ReversibleTagGroup_rtg_dashBorderColor:I

    iget p3, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup;->default_dash_border_color:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup;->dashBorderColor:I

    .line 161
    sget p2, Lcom/mi/globallauncher/R$styleable;->ReversibleTagGroup_rtg_inputHintColor:I

    iget p3, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup;->default_input_hint_color:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup;->inputHintColor:I

    .line 162
    sget p2, Lcom/mi/globallauncher/R$styleable;->ReversibleTagGroup_rtg_inputTextColor:I

    iget p3, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup;->default_input_text_color:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup;->inputTextColor:I

    .line 163
    sget p2, Lcom/mi/globallauncher/R$styleable;->ReversibleTagGroup_rtg_checkedBorderColor:I

    iget p3, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup;->default_checked_border_color:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup;->checkedBorderColor:I

    .line 164
    sget p2, Lcom/mi/globallauncher/R$styleable;->ReversibleTagGroup_rtg_checkedTextColor:I

    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup;->checkedTextColor:I

    .line 165
    sget p2, Lcom/mi/globallauncher/R$styleable;->ReversibleTagGroup_rtg_checkedMarkerColor:I

    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup;->checkedMarkerColor:I

    .line 166
    sget p2, Lcom/mi/globallauncher/R$styleable;->ReversibleTagGroup_rtg_checkedBackgroundColor:I

    iget p3, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup;->default_checked_background_color:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup;->checkedBackgroundColor:I

    .line 167
    sget p2, Lcom/mi/globallauncher/R$styleable;->ReversibleTagGroup_rtg_pressedBackgroundColor:I

    iget p3, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup;->default_pressed_background_color:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup;->pressedBackgroundColor:I

    .line 168
    sget p2, Lcom/mi/globallauncher/R$styleable;->ReversibleTagGroup_rtg_borderStrokeWidth:I

    iget p3, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup;->default_border_stroke_width:F

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup;->borderStrokeWidth:F

    .line 169
    sget p2, Lcom/mi/globallauncher/R$styleable;->ReversibleTagGroup_rtg_textSize:I

    iget p3, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup;->default_text_size:F

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup;->textSize:F

    .line 170
    sget p2, Lcom/mi/globallauncher/R$styleable;->ReversibleTagGroup_rtg_horizontalSpacing:I

    iget p3, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup;->default_horizontal_spacing:F

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup;->horizontalSpacing:I

    .line 171
    sget p2, Lcom/mi/globallauncher/R$styleable;->ReversibleTagGroup_rtg_verticalSpacing:I

    iget p3, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup;->default_vertical_spacing:F

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup;->verticalSpacing:I

    .line 172
    sget p2, Lcom/mi/globallauncher/R$styleable;->ReversibleTagGroup_rtg_horizontalPadding:I

    iget p3, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup;->default_horizontal_padding:F

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup;->horizontalPadding:I

    .line 173
    sget p2, Lcom/mi/globallauncher/R$styleable;->ReversibleTagGroup_rtg_verticalPadding:I

    iget p3, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup;->default_vertical_padding:F

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup;->verticalPadding:I

    .line 175
    sget p2, Lcom/mi/globallauncher/R$styleable;->ReversibleTagGroup_rtg_reverse_layout:I

    iget-boolean p3, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup;->default_reverse_layout:Z

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup;->reverseLayout:Z

    .line 176
    sget p2, Lcom/mi/globallauncher/R$styleable;->ReversibleTagGroup_rtg_max_row_count:I

    iget p3, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup;->default_max_row_count:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup;->maxRowCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 181
    iget-boolean p1, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup;->isAppendMode:Z

    if-eqz p1, :cond_0

    .line 183
    invoke-virtual {p0}, Lcom/mi/globallauncher/view/ReversibleTagGroup;->appendInputTag()V

    .line 186
    new-instance p1, Lcom/mi/globallauncher/view/-$$Lambda$ReversibleTagGroup$dkwTqEJkSAVJOFJ7v220mgB9q7E;

    invoke-direct {p1, p0}, Lcom/mi/globallauncher/view/-$$Lambda$ReversibleTagGroup$dkwTqEJkSAVJOFJ7v220mgB9q7E;-><init>(Lcom/mi/globallauncher/view/ReversibleTagGroup;)V

    invoke-virtual {p0, p1}, Lcom/mi/globallauncher/view/ReversibleTagGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    .line 178
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 179
    throw p0
.end method

.method static synthetic access$1000(Lcom/mi/globallauncher/view/ReversibleTagGroup;)Lcom/mi/globallauncher/view/ReversibleTagGroup$OnTagChangeListener;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup;->mOnTagChangeListener:Lcom/mi/globallauncher/view/ReversibleTagGroup$OnTagChangeListener;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/mi/globallauncher/view/ReversibleTagGroup;)I
    .locals 0

    .line 40
    iget p0, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup;->dashBorderColor:I

    return p0
.end method

.method static synthetic access$1200(Lcom/mi/globallauncher/view/ReversibleTagGroup;)I
    .locals 0

    .line 40
    iget p0, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup;->backgroundColor:I

    return p0
.end method

.method static synthetic access$1300(Lcom/mi/globallauncher/view/ReversibleTagGroup;)I
    .locals 0

    .line 40
    iget p0, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup;->inputHintColor:I

    return p0
.end method

.method static synthetic access$1400(Lcom/mi/globallauncher/view/ReversibleTagGroup;)I
    .locals 0

    .line 40
    iget p0, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup;->inputTextColor:I

    return p0
.end method

.method static synthetic access$1500(Lcom/mi/globallauncher/view/ReversibleTagGroup;)I
    .locals 0

    .line 40
    iget p0, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup;->checkedBorderColor:I

    return p0
.end method

.method static synthetic access$1600(Lcom/mi/globallauncher/view/ReversibleTagGroup;)I
    .locals 0

    .line 40
    iget p0, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup;->checkedBackgroundColor:I

    return p0
.end method

.method static synthetic access$1700(Lcom/mi/globallauncher/view/ReversibleTagGroup;)I
    .locals 0

    .line 40
    iget p0, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup;->checkedTextColor:I

    return p0
.end method

.method static synthetic access$1800(Lcom/mi/globallauncher/view/ReversibleTagGroup;)I
    .locals 0

    .line 40
    iget p0, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup;->borderColor:I

    return p0
.end method

.method static synthetic access$1900(Lcom/mi/globallauncher/view/ReversibleTagGroup;)I
    .locals 0

    .line 40
    iget p0, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup;->textColor:I

    return p0
.end method

.method static synthetic access$200(Lcom/mi/globallauncher/view/ReversibleTagGroup;)Z
    .locals 0

    .line 40
    iget-boolean p0, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup;->isAppendMode:Z

    return p0
.end method

.method static synthetic access$2000(Lcom/mi/globallauncher/view/ReversibleTagGroup;)I
    .locals 0

    .line 40
    iget p0, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup;->pressedBackgroundColor:I

    return p0
.end method

.method static synthetic access$300(Lcom/mi/globallauncher/view/ReversibleTagGroup;)Lcom/mi/globallauncher/view/ReversibleTagGroup$OnTagClickListener;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup;->mOnTagClickListener:Lcom/mi/globallauncher/view/ReversibleTagGroup$OnTagClickListener;

    return-object p0
.end method

.method static synthetic access$400(Lcom/mi/globallauncher/view/ReversibleTagGroup;)F
    .locals 0

    .line 40
    iget p0, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup;->borderStrokeWidth:F

    return p0
.end method

.method static synthetic access$500(Lcom/mi/globallauncher/view/ReversibleTagGroup;)I
    .locals 0

    .line 40
    iget p0, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup;->checkedMarkerColor:I

    return p0
.end method

.method static synthetic access$600(Lcom/mi/globallauncher/view/ReversibleTagGroup;)I
    .locals 0

    .line 40
    iget p0, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup;->horizontalPadding:I

    return p0
.end method

.method static synthetic access$700(Lcom/mi/globallauncher/view/ReversibleTagGroup;)I
    .locals 0

    .line 40
    iget p0, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup;->verticalPadding:I

    return p0
.end method

.method static synthetic access$800(Lcom/mi/globallauncher/view/ReversibleTagGroup;)F
    .locals 0

    .line 40
    iget p0, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup;->textSize:F

    return p0
.end method

.method static synthetic access$900(Lcom/mi/globallauncher/view/ReversibleTagGroup;)Ljava/lang/CharSequence;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup;->inputHint:Ljava/lang/CharSequence;

    return-object p0
.end method


# virtual methods
.method protected appendInputTag()V
    .locals 1

    const/4 v0, 0x0

    .line 479
    invoke-virtual {p0, v0}, Lcom/mi/globallauncher/view/ReversibleTagGroup;->appendInputTag(Ljava/lang/String;)V

    return-void
.end method

.method protected appendInputTag(Ljava/lang/String;)V
    .locals 3

    .line 488
    invoke-virtual {p0}, Lcom/mi/globallauncher/view/ReversibleTagGroup;->getInputTag()Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;

    move-result-object v0

    if-nez v0, :cond_0

    .line 493
    new-instance v0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;

    invoke-virtual {p0}, Lcom/mi/globallauncher/view/ReversibleTagGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;-><init>(Lcom/mi/globallauncher/view/ReversibleTagGroup;Landroid/content/Context;ILjava/lang/CharSequence;)V

    .line 494
    iget-object p1, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup;->mInternalTagClickListener:Lcom/mi/globallauncher/view/ReversibleTagGroup$InternalTagClickListener;

    invoke-virtual {v0, p1}, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 495
    invoke-virtual {p0, v0}, Lcom/mi/globallauncher/view/ReversibleTagGroup;->addView(Landroid/view/View;)V

    return-void

    .line 490
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Already has a INPUT tag in group."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected appendTag(Ljava/lang/CharSequence;)V
    .locals 3

    .line 504
    new-instance v0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;

    invoke-virtual {p0}, Lcom/mi/globallauncher/view/ReversibleTagGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;-><init>(Lcom/mi/globallauncher/view/ReversibleTagGroup;Landroid/content/Context;ILjava/lang/CharSequence;)V

    .line 505
    iget-object p1, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup;->mInternalTagClickListener:Lcom/mi/globallauncher/view/ReversibleTagGroup$InternalTagClickListener;

    invoke-virtual {v0, p1}, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 509
    invoke-virtual {p0, v0}, Lcom/mi/globallauncher/view/ReversibleTagGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method protected deleteTag(Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;)V
    .locals 1

    .line 549
    invoke-virtual {p0, p1}, Lcom/mi/globallauncher/view/ReversibleTagGroup;->removeView(Landroid/view/View;)V

    .line 550
    iget-object v0, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup;->mOnTagChangeListener:Lcom/mi/globallauncher/view/ReversibleTagGroup$OnTagChangeListener;

    if-eqz v0, :cond_0

    .line 551
    invoke-virtual {p1}, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lcom/mi/globallauncher/view/ReversibleTagGroup$OnTagChangeListener;->onDelete(Lcom/mi/globallauncher/view/ReversibleTagGroup;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public dp2px(F)F
    .locals 1

    .line 514
    invoke-virtual {p0}, Lcom/mi/globallauncher/view/ReversibleTagGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/4 v0, 0x1

    .line 513
    invoke-static {v0, p1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    return p0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 536
    new-instance v0, Lcom/mi/globallauncher/view/ReversibleTagGroup$LayoutParams;

    invoke-virtual {p0}, Lcom/mi/globallauncher/view/ReversibleTagGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/mi/globallauncher/view/ReversibleTagGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected getCheckedTag()Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;
    .locals 2

    .line 443
    invoke-virtual {p0}, Lcom/mi/globallauncher/view/ReversibleTagGroup;->getCheckedTagIndex()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 445
    invoke-virtual {p0, v0}, Lcom/mi/globallauncher/view/ReversibleTagGroup;->getTagAt(I)Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected getCheckedTagIndex()I
    .locals 3

    .line 456
    invoke-virtual {p0}, Lcom/mi/globallauncher/view/ReversibleTagGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 458
    invoke-virtual {p0, v1}, Lcom/mi/globallauncher/view/ReversibleTagGroup;->getTagAt(I)Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;

    move-result-object v2

    .line 459
    invoke-static {v2}, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->access$100(Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method protected getInputTag()Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;
    .locals 3

    .line 348
    iget-boolean v0, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup;->isAppendMode:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 349
    invoke-virtual {p0}, Lcom/mi/globallauncher/view/ReversibleTagGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 350
    invoke-virtual {p0, v0}, Lcom/mi/globallauncher/view/ReversibleTagGroup;->getTagAt(I)Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 351
    invoke-static {p0}, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->access$000(Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    return-object p0

    :cond_0
    return-object v1
.end method

.method public getInputTagText()Ljava/lang/String;
    .locals 0

    .line 367
    invoke-virtual {p0}, Lcom/mi/globallauncher/view/ReversibleTagGroup;->getInputTag()Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 369
    invoke-virtual {p0}, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected getLastNormalTagView()Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;
    .locals 1

    .line 380
    iget-boolean v0, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup;->isAppendMode:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/mi/globallauncher/view/ReversibleTagGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/mi/globallauncher/view/ReversibleTagGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 381
    :goto_0
    invoke-virtual {p0, v0}, Lcom/mi/globallauncher/view/ReversibleTagGroup;->getTagAt(I)Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;

    move-result-object p0

    return-object p0
.end method

.method protected getTagAt(I)Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;
    .locals 0

    .line 434
    invoke-virtual {p0, p1}, Lcom/mi/globallauncher/view/ReversibleTagGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;

    return-object p0
.end method

.method public getTags()[Ljava/lang/String;
    .locals 6

    .line 391
    invoke-virtual {p0}, Lcom/mi/globallauncher/view/ReversibleTagGroup;->getChildCount()I

    move-result v0

    .line 392
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 394
    invoke-virtual {p0, v2}, Lcom/mi/globallauncher/view/ReversibleTagGroup;->getTagAt(I)Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;

    move-result-object v3

    .line 395
    invoke-static {v3}, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->access$000(Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 396
    invoke-virtual {v3}, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 400
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-interface {v1, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public synthetic lambda$new$0$ReversibleTagGroup(Landroid/view/View;)V
    .locals 0

    .line 186
    invoke-virtual {p0}, Lcom/mi/globallauncher/view/ReversibleTagGroup;->submitTag()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 9

    .line 264
    invoke-virtual {p0}, Lcom/mi/globallauncher/view/ReversibleTagGroup;->getPaddingLeft()I

    move-result p1

    sub-int/2addr p4, p2

    .line 265
    invoke-virtual {p0}, Lcom/mi/globallauncher/view/ReversibleTagGroup;->getPaddingRight()I

    move-result p2

    sub-int/2addr p4, p2

    .line 266
    invoke-virtual {p0}, Lcom/mi/globallauncher/view/ReversibleTagGroup;->getPaddingTop()I

    move-result p2

    sub-int/2addr p5, p3

    .line 267
    invoke-virtual {p0}, Lcom/mi/globallauncher/view/ReversibleTagGroup;->getPaddingBottom()I

    move-result p3

    sub-int/2addr p5, p3

    .line 276
    invoke-virtual {p0}, Lcom/mi/globallauncher/view/ReversibleTagGroup;->getChildCount()I

    move-result p3

    const/4 v0, 0x0

    move v1, p2

    move v2, p5

    move p5, v0

    move v3, p5

    move p2, p1

    :goto_0
    if-ge v0, p3, :cond_5

    .line 278
    invoke-virtual {p0, v0}, Lcom/mi/globallauncher/view/ReversibleTagGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 279
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 280
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 282
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-eq v7, v8, :cond_4

    add-int v7, p2, v5

    if-le v7, p4, :cond_2

    add-int/lit8 p5, p5, 0x1

    .line 285
    iget p2, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup;->maxRowCount:I

    if-lt p5, p2, :cond_0

    goto :goto_4

    .line 287
    :cond_0
    iget-boolean p2, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup;->reverseLayout:Z

    if-eqz p2, :cond_1

    .line 288
    iget p2, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup;->verticalSpacing:I

    add-int/2addr v3, p2

    sub-int/2addr v2, v3

    sub-int p2, v2, v6

    goto :goto_1

    .line 291
    :cond_1
    iget p2, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup;->verticalSpacing:I

    add-int/2addr v3, p2

    add-int p2, v1, v3

    add-int v2, p2, v6

    :goto_1
    move v1, p2

    move p2, p1

    goto :goto_3

    .line 296
    :cond_2
    iget-boolean v7, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup;->reverseLayout:Z

    if-eqz v7, :cond_3

    sub-int v1, v2, v6

    goto :goto_2

    :cond_3
    add-int v2, v1, v6

    .line 301
    :goto_2
    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    :goto_3
    add-int v3, p2, v5

    .line 303
    invoke-virtual {v4, p2, v1, v3, v2}, Landroid/view/View;->layout(IIII)V

    .line 305
    iget v3, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup;->horizontalSpacing:I

    add-int/2addr v5, v3

    add-int/2addr p2, v5

    move v3, v6

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    :goto_4
    return-void
.end method

.method protected onMeasure(II)V
    .locals 13

    .line 207
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 209
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 210
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 211
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 212
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 214
    invoke-virtual {p0, p1, p2}, Lcom/mi/globallauncher/view/ReversibleTagGroup;->measureChildren(II)V

    .line 222
    invoke-virtual {p0}, Lcom/mi/globallauncher/view/ReversibleTagGroup;->getPaddingLeft()I

    move-result p1

    sub-int p1, v2, p1

    invoke-virtual {p0}, Lcom/mi/globallauncher/view/ReversibleTagGroup;->getPaddingRight()I

    move-result p2

    sub-int/2addr p1, p2

    .line 224
    invoke-virtual {p0}, Lcom/mi/globallauncher/view/ReversibleTagGroup;->getChildCount()I

    move-result p2

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    move v7, v6

    move v8, v7

    :goto_0
    if-ge v4, p2, :cond_3

    .line 226
    invoke-virtual {p0, v4}, Lcom/mi/globallauncher/view/ReversibleTagGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 227
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    .line 228
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    .line 230
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v9

    const/16 v12, 0x8

    if-eq v9, v12, :cond_2

    add-int/2addr v5, v10

    if-le v5, p1, :cond_1

    add-int/lit8 v7, v7, 0x1

    .line 234
    iget v9, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup;->maxRowCount:I

    if-lt v7, v9, :cond_0

    goto :goto_2

    .line 236
    :cond_0
    iget v5, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup;->verticalSpacing:I

    add-int/2addr v6, v5

    add-int/2addr v8, v6

    move v5, v10

    goto :goto_1

    .line 239
    :cond_1
    invoke-static {v6, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 241
    :goto_1
    iget v6, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup;->horizontalSpacing:I

    add-int/2addr v5, v6

    move v6, v11

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    add-int/2addr v8, v6

    .line 248
    invoke-virtual {p0}, Lcom/mi/globallauncher/view/ReversibleTagGroup;->getPaddingTop()I

    move-result p1

    invoke-virtual {p0}, Lcom/mi/globallauncher/view/ReversibleTagGroup;->getPaddingBottom()I

    move-result p2

    add-int/2addr p1, p2

    add-int/2addr p1, v8

    if-nez v7, :cond_4

    .line 253
    invoke-virtual {p0}, Lcom/mi/globallauncher/view/ReversibleTagGroup;->getPaddingLeft()I

    move-result p2

    invoke-virtual {p0}, Lcom/mi/globallauncher/view/ReversibleTagGroup;->getPaddingRight()I

    move-result v4

    add-int/2addr p2, v4

    add-int/2addr p2, v5

    goto :goto_3

    :cond_4
    move p2, v2

    :goto_3
    const/high16 v4, 0x40000000    # 2.0f

    if-ne v0, v4, :cond_5

    move p2, v2

    :cond_5
    if-ne v1, v4, :cond_6

    move p1, v3

    .line 258
    :cond_6
    invoke-virtual {p0, p2, p1}, Lcom/mi/globallauncher/view/ReversibleTagGroup;->setMeasuredDimension(II)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 324
    instance-of v0, p1, Lcom/mi/globallauncher/view/ReversibleTagGroup$SavedState;

    if-nez v0, :cond_0

    .line 325
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 329
    :cond_0
    check-cast p1, Lcom/mi/globallauncher/view/ReversibleTagGroup$SavedState;

    .line 330
    invoke-virtual {p1}, Lcom/mi/globallauncher/view/ReversibleTagGroup$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 332
    iget-object v0, p1, Lcom/mi/globallauncher/view/ReversibleTagGroup$SavedState;->tags:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/mi/globallauncher/view/ReversibleTagGroup;->setTags([Ljava/lang/String;)V

    .line 333
    iget v0, p1, Lcom/mi/globallauncher/view/ReversibleTagGroup$SavedState;->checkedPosition:I

    invoke-virtual {p0, v0}, Lcom/mi/globallauncher/view/ReversibleTagGroup;->getTagAt(I)Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 335
    invoke-virtual {v0, v1}, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->setChecked(Z)V

    .line 337
    :cond_1
    invoke-virtual {p0}, Lcom/mi/globallauncher/view/ReversibleTagGroup;->getInputTag()Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 338
    invoke-virtual {p0}, Lcom/mi/globallauncher/view/ReversibleTagGroup;->getInputTag()Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;

    move-result-object p0

    iget-object p1, p1, Lcom/mi/globallauncher/view/ReversibleTagGroup$SavedState;->input:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 312
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 313
    new-instance v1, Lcom/mi/globallauncher/view/ReversibleTagGroup$SavedState;

    invoke-direct {v1, v0}, Lcom/mi/globallauncher/view/ReversibleTagGroup$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 314
    invoke-virtual {p0}, Lcom/mi/globallauncher/view/ReversibleTagGroup;->getTags()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/mi/globallauncher/view/ReversibleTagGroup$SavedState;->tags:[Ljava/lang/String;

    .line 315
    invoke-virtual {p0}, Lcom/mi/globallauncher/view/ReversibleTagGroup;->getCheckedTagIndex()I

    move-result v0

    iput v0, v1, Lcom/mi/globallauncher/view/ReversibleTagGroup$SavedState;->checkedPosition:I

    .line 316
    invoke-virtual {p0}, Lcom/mi/globallauncher/view/ReversibleTagGroup;->getInputTag()Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 317
    invoke-virtual {p0}, Lcom/mi/globallauncher/view/ReversibleTagGroup;->getInputTag()Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lcom/mi/globallauncher/view/ReversibleTagGroup$SavedState;->input:Ljava/lang/String;

    :cond_0
    return-object v1
.end method

.method public setBackgroundColor(I)V
    .locals 0

    .line 531
    iput p1, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup;->backgroundColor:I

    return-void
.end method

.method public setBorderColor(I)V
    .locals 0

    .line 527
    iput p1, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup;->borderColor:I

    return-void
.end method

.method public setOnTagChangeListener(Lcom/mi/globallauncher/view/ReversibleTagGroup$OnTagChangeListener;)V
    .locals 0

    .line 472
    iput-object p1, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup;->mOnTagChangeListener:Lcom/mi/globallauncher/view/ReversibleTagGroup$OnTagChangeListener;

    return-void
.end method

.method public setOnTagClickListener(Lcom/mi/globallauncher/view/ReversibleTagGroup$OnTagClickListener;)V
    .locals 0

    .line 545
    iput-object p1, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup;->mOnTagClickListener:Lcom/mi/globallauncher/view/ReversibleTagGroup$OnTagClickListener;

    return-void
.end method

.method public setTags(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 407
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/mi/globallauncher/view/ReversibleTagGroup;->setTags([Ljava/lang/String;)V

    return-void
.end method

.method public varargs setTags([Ljava/lang/String;)V
    .locals 3

    .line 416
    invoke-virtual {p0}, Lcom/mi/globallauncher/view/ReversibleTagGroup;->removeAllViews()V

    .line 417
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 418
    invoke-virtual {p0, v2}, Lcom/mi/globallauncher/view/ReversibleTagGroup;->appendTag(Ljava/lang/CharSequence;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 421
    :cond_0
    iget-boolean p1, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup;->isAppendMode:Z

    if-eqz p1, :cond_1

    .line 422
    invoke-virtual {p0}, Lcom/mi/globallauncher/view/ReversibleTagGroup;->appendInputTag()V

    :cond_1
    return-void
.end method

.method public setTextColor(I)V
    .locals 0

    .line 523
    iput p1, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup;->textColor:I

    return-void
.end method

.method public sp2px(F)F
    .locals 1

    .line 519
    invoke-virtual {p0}, Lcom/mi/globallauncher/view/ReversibleTagGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/4 v0, 0x2

    .line 518
    invoke-static {v0, p1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    return p0
.end method

.method public submitTag()V
    .locals 2

    .line 194
    invoke-virtual {p0}, Lcom/mi/globallauncher/view/ReversibleTagGroup;->getInputTag()Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 195
    invoke-virtual {v0}, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->isInputAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 196
    invoke-virtual {v0}, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->endInput()V

    .line 198
    iget-object v1, p0, Lcom/mi/globallauncher/view/ReversibleTagGroup;->mOnTagChangeListener:Lcom/mi/globallauncher/view/ReversibleTagGroup$OnTagChangeListener;

    if-eqz v1, :cond_0

    .line 199
    invoke-virtual {v0}, Lcom/mi/globallauncher/view/ReversibleTagGroup$TagView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, p0, v0}, Lcom/mi/globallauncher/view/ReversibleTagGroup$OnTagChangeListener;->onAppend(Lcom/mi/globallauncher/view/ReversibleTagGroup;Ljava/lang/String;)V

    .line 201
    :cond_0
    invoke-virtual {p0}, Lcom/mi/globallauncher/view/ReversibleTagGroup;->appendInputTag()V

    :cond_1
    return-void
.end method
