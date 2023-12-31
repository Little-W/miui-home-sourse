.class public Lmiuix/androidbasewidget/widget/SeekBar;
.super Landroidx/appcompat/widget/AppCompatSeekBar;
.source "SeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/androidbasewidget/widget/SeekBar$ColorUpdateRunner;
    }
.end annotation


# instance fields
.field private mDefaultForegroundPrimaryColor:I

.field private mDefaultForegroundPrimaryDisableColor:I

.field private mDefaultIconPrimaryColor:I

.field private mDisabledProgressAlpha:F

.field private mDraggableMaxPercentProcess:F

.field private mDraggableMinPercentProgress:F

.field private mForegroundPrimaryColor:I

.field private mForegroundPrimaryDisableColor:I

.field private mHasEdgeReached:Z

.field private mIStateStyle:Lmiuix/animation/IStateStyle;

.field private mIconPrimaryColor:I

.field private mIconTransparent:I

.field private mIsInMiddle:Z

.field private mMaxMiddle:F

.field private mMiddleEnabled:Z

.field private mMinMiddle:F

.field private mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mProgess:I

.field private mProgressColorStateList:Landroid/content/res/ColorStateList;

.field private final mTrainsOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 67
    invoke-direct {p0, p1, v0}, Lmiuix/androidbasewidget/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 71
    sget v0, Lmiuix/androidbasewidget/R$attr;->seekBarStyle:I

    invoke-direct {p0, p1, p2, v0}, Lmiuix/androidbasewidget/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    .line 75
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 307
    new-instance v0, Lmiuix/androidbasewidget/widget/SeekBar$1;

    invoke-direct {v0, p0}, Lmiuix/androidbasewidget/widget/SeekBar$1;-><init>(Lmiuix/androidbasewidget/widget/SeekBar;)V

    iput-object v0, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mTrainsOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    const/4 v0, 0x0

    .line 76
    invoke-static {p0, v0}, Lmiuix/view/CompatViewMethod;->setForceDarkAllowed(Landroid/view/View;Z)V

    .line 77
    sget-object v1, Lmiuix/androidbasewidget/R$styleable;->SeekBar:[I

    sget v2, Lmiuix/androidbasewidget/R$style;->Widget_SeekBar_DayNight:I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 80
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v1, Lmiuix/androidbasewidget/R$color;->miuix_appcompat_progress_primary_colors_light:I

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    iput p3, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mDefaultForegroundPrimaryColor:I

    .line 81
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v1, Lmiuix/androidbasewidget/R$color;->miuix_appcompat_progress_disable_color_light:I

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    iput p3, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mDefaultForegroundPrimaryDisableColor:I

    .line 82
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v1, Lmiuix/androidbasewidget/R$color;->miuix_appcompat_progress_background_icon_light:I

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    iput p3, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mDefaultIconPrimaryColor:I

    .line 83
    sget p3, Lmiuix/androidbasewidget/R$styleable;->SeekBar_middleEnabled:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mMiddleEnabled:Z

    .line 84
    sget p3, Lmiuix/androidbasewidget/R$styleable;->SeekBar_foregroundPrimaryColor:I

    iget v1, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mDefaultForegroundPrimaryColor:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mForegroundPrimaryColor:I

    .line 85
    sget p3, Lmiuix/androidbasewidget/R$styleable;->SeekBar_foregroundPrimaryDisableColor:I

    iget v1, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mDefaultForegroundPrimaryDisableColor:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mForegroundPrimaryDisableColor:I

    .line 86
    sget p3, Lmiuix/androidbasewidget/R$styleable;->SeekBar_iconPrimaryColor:I

    iget v1, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mDefaultIconPrimaryColor:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mIconPrimaryColor:I

    .line 87
    sget p3, Lmiuix/androidbasewidget/R$styleable;->SeekBar_disabledProgressAlpha:I

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p3

    iput p3, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mDisabledProgressAlpha:F

    .line 88
    sget p3, Lmiuix/androidbasewidget/R$styleable;->SeekBar_minMiddle:I

    const v2, 0x3eeb851f    # 0.46f

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p3

    iput p3, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mMinMiddle:F

    .line 89
    sget p3, Lmiuix/androidbasewidget/R$styleable;->SeekBar_maxMiddle:I

    const v3, 0x3f0a3d71    # 0.54f

    invoke-virtual {p2, p3, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p3

    iput p3, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mMaxMiddle:F

    .line 90
    sget p3, Lmiuix/androidbasewidget/R$styleable;->SeekBar_draggableMinPercentProgress:I

    const/4 v4, 0x0

    invoke-direct {p0, p2, p3, v4}, Lmiuix/androidbasewidget/widget/SeekBar;->getValueFromTypedArray(Landroid/content/res/TypedArray;IF)F

    move-result p3

    iput p3, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mDraggableMinPercentProgress:F

    .line 91
    sget p3, Lmiuix/androidbasewidget/R$styleable;->SeekBar_draggableMaxPercentProgress:I

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {p0, p2, p3, v5}, Lmiuix/androidbasewidget/widget/SeekBar;->getValueFromTypedArray(Landroid/content/res/TypedArray;IF)F

    move-result p3

    iput p3, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mDraggableMaxPercentProcess:F

    .line 92
    iget p3, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mDraggableMinPercentProgress:F

    invoke-virtual {p0, p3}, Lmiuix/androidbasewidget/widget/SeekBar;->setDraggableMinPercentProgress(F)V

    .line 93
    iget p3, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mDraggableMaxPercentProcess:F

    invoke-virtual {p0, p3}, Lmiuix/androidbasewidget/widget/SeekBar;->setDraggableMaxPercentProcess(F)V

    .line 94
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 95
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lmiuix/androidbasewidget/R$color;->miuix_appcompat_transparent:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mIconTransparent:I

    .line 96
    iget p1, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mMinMiddle:F

    cmpl-float p2, p1, v1

    if-gtz p2, :cond_0

    cmpg-float p1, p1, v4

    if-gez p1, :cond_1

    .line 97
    :cond_0
    iput v2, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mMinMiddle:F

    .line 99
    :cond_1
    iget p1, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mMaxMiddle:F

    cmpg-float p2, p1, v1

    if-ltz p2, :cond_2

    cmpl-float p1, p1, v5

    if-lez p1, :cond_3

    .line 100
    :cond_2
    iput v3, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mMaxMiddle:F

    .line 103
    :cond_3
    invoke-virtual {p0}, Lmiuix/androidbasewidget/widget/SeekBar;->getMax()I

    move-result p1

    invoke-direct {p0}, Lmiuix/androidbasewidget/widget/SeekBar;->getMinWrapper()I

    move-result p2

    sub-int/2addr p1, p2

    .line 104
    invoke-virtual {p0}, Lmiuix/androidbasewidget/widget/SeekBar;->getProgress()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lmiuix/androidbasewidget/widget/SeekBar;->isInMiddle(II)Z

    move-result p2

    iput-boolean p2, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mIsInMiddle:Z

    .line 105
    invoke-virtual {p0}, Lmiuix/androidbasewidget/widget/SeekBar;->getProgress()I

    move-result p2

    iput p2, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mProgess:I

    .line 106
    iget-boolean p2, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mIsInMiddle:Z

    if-eqz p2, :cond_4

    int-to-float p1, p1

    mul-float/2addr p1, v1

    .line 107
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mProgess:I

    .line 108
    iget p1, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mProgess:I

    invoke-virtual {p0, p1}, Lmiuix/androidbasewidget/widget/SeekBar;->setProgress(I)V

    :cond_4
    const/4 p1, 0x1

    new-array p2, p1, [Ljava/lang/Object;

    .line 110
    iget p3, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mProgess:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, v0

    invoke-static {p2}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p2

    iput-object p2, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mIStateStyle:Lmiuix/animation/IStateStyle;

    .line 111
    iget-object p2, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mIStateStyle:Lmiuix/animation/IStateStyle;

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    const-string v1, "targe"

    aput-object v1, p3, v0

    iget v1, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mProgess:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p3, p1

    invoke-interface {p2, p3}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 112
    iget-object p2, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mTrainsOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {p0, p2}, Lmiuix/androidbasewidget/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 114
    new-instance p2, Lmiuix/androidbasewidget/widget/SeekBar$ColorUpdateRunner;

    invoke-direct {p2, p0}, Lmiuix/androidbasewidget/widget/SeekBar$ColorUpdateRunner;-><init>(Lmiuix/androidbasewidget/widget/SeekBar;)V

    invoke-virtual {p0, p2}, Lmiuix/androidbasewidget/widget/SeekBar;->post(Ljava/lang/Runnable;)Z

    new-array p1, p1, [Landroid/view/View;

    aput-object p0, p1, v0

    .line 116
    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/animation/IFolme;->hover()Lmiuix/animation/IHoverStyle;

    move-result-object p1

    sget-object p2, Lmiuix/animation/IHoverStyle$HoverEffect;->NORMAL:Lmiuix/animation/IHoverStyle$HoverEffect;

    invoke-interface {p1, p2}, Lmiuix/animation/IHoverStyle;->setEffect(Lmiuix/animation/IHoverStyle$HoverEffect;)Lmiuix/animation/IHoverStyle;

    move-result-object p1

    new-array p2, v0, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {p1, p0, p2}, Lmiuix/animation/IHoverStyle;->handleHoverOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    return-void
.end method

.method static synthetic access$000(Lmiuix/androidbasewidget/widget/SeekBar;)Z
    .locals 0

    .line 43
    iget-boolean p0, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mMiddleEnabled:Z

    return p0
.end method

.method static synthetic access$100(Lmiuix/androidbasewidget/widget/SeekBar;)I
    .locals 0

    .line 43
    invoke-direct {p0}, Lmiuix/androidbasewidget/widget/SeekBar;->getMinWrapper()I

    move-result p0

    return p0
.end method

.method static synthetic access$1000(Lmiuix/androidbasewidget/widget/SeekBar;)Landroid/widget/SeekBar$OnSeekBarChangeListener;
    .locals 0

    .line 43
    iget-object p0, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    return-object p0
.end method

.method static synthetic access$1100(Lmiuix/androidbasewidget/widget/SeekBar;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lmiuix/androidbasewidget/widget/SeekBar;->updatePrimaryColor()V

    return-void
.end method

.method static synthetic access$200(Lmiuix/androidbasewidget/widget/SeekBar;)F
    .locals 0

    .line 43
    iget p0, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mMinMiddle:F

    return p0
.end method

.method static synthetic access$300(Lmiuix/androidbasewidget/widget/SeekBar;)F
    .locals 0

    .line 43
    iget p0, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mMaxMiddle:F

    return p0
.end method

.method static synthetic access$400(Lmiuix/androidbasewidget/widget/SeekBar;)I
    .locals 0

    .line 43
    iget p0, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mProgess:I

    return p0
.end method

.method static synthetic access$402(Lmiuix/androidbasewidget/widget/SeekBar;I)I
    .locals 0

    .line 43
    iput p1, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mProgess:I

    return p1
.end method

.method static synthetic access$500(Lmiuix/androidbasewidget/widget/SeekBar;)Lmiuix/animation/IStateStyle;
    .locals 0

    .line 43
    iget-object p0, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mIStateStyle:Lmiuix/animation/IStateStyle;

    return-object p0
.end method

.method static synthetic access$600(Lmiuix/androidbasewidget/widget/SeekBar;)F
    .locals 0

    .line 43
    iget p0, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mDraggableMinPercentProgress:F

    return p0
.end method

.method static synthetic access$700(Lmiuix/androidbasewidget/widget/SeekBar;F)I
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lmiuix/androidbasewidget/widget/SeekBar;->getProgressForm(F)I

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lmiuix/androidbasewidget/widget/SeekBar;)F
    .locals 0

    .line 43
    iget p0, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mDraggableMaxPercentProcess:F

    return p0
.end method

.method static synthetic access$900(Lmiuix/androidbasewidget/widget/SeekBar;)Z
    .locals 0

    .line 43
    iget-boolean p0, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mHasEdgeReached:Z

    return p0
.end method

.method static synthetic access$902(Lmiuix/androidbasewidget/widget/SeekBar;Z)Z
    .locals 0

    .line 43
    iput-boolean p1, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mHasEdgeReached:Z

    return p1
.end method

.method private getMinWrapper()I
    .locals 2

    .line 292
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 293
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatSeekBar;->getMin()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private declared-synchronized getProgressForm(F)I
    .locals 1

    monitor-enter p0

    .line 129
    :try_start_0
    invoke-direct {p0}, Lmiuix/androidbasewidget/widget/SeekBar;->getRange()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr p1, v0

    float-to-int p1, p1

    invoke-direct {p0}, Lmiuix/androidbasewidget/widget/SeekBar;->getMinWrapper()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr p1, v0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized getRange()I
    .locals 2

    monitor-enter p0

    .line 133
    :try_start_0
    invoke-virtual {p0}, Lmiuix/androidbasewidget/widget/SeekBar;->getMax()I

    move-result v0

    invoke-direct {p0}, Lmiuix/androidbasewidget/widget/SeekBar;->getMinWrapper()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v0, v1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getValueFromTypedArray(Landroid/content/res/TypedArray;IF)F
    .locals 0

    .line 120
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 121
    iget p1, p0, Landroid/util/TypedValue;->type:I

    const/4 p2, 0x6

    if-ne p1, p2, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    .line 123
    invoke-virtual {p0, p1, p1}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result p0

    return p0

    :cond_0
    return p3
.end method

.method private isInMiddle(II)Z
    .locals 1

    if-lez p1, :cond_0

    .line 300
    invoke-direct {p0}, Lmiuix/androidbasewidget/widget/SeekBar;->getMinWrapper()I

    move-result v0

    sub-int/2addr p2, v0

    int-to-float p2, p2

    int-to-float p1, p1

    div-float/2addr p2, p1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 301
    :goto_0
    iget p1, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mMinMiddle:F

    cmpl-float p1, p2, p1

    if-lez p1, :cond_1

    iget p0, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mMaxMiddle:F

    cmpg-float p0, p2, p0

    if-gez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private updatePrimaryColor()V
    .locals 8

    .line 241
    invoke-virtual {p0}, Lmiuix/androidbasewidget/widget/SeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 242
    instance-of v1, v0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v1, :cond_5

    .line 243
    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    const v1, 0x102000d

    .line 244
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 245
    instance-of v2, v1, Landroid/graphics/drawable/ClipDrawable;

    if-eqz v2, :cond_3

    .line 246
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_3

    .line 247
    check-cast v1, Landroid/graphics/drawable/ClipDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/ClipDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 248
    instance-of v2, v1, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v2, :cond_3

    .line 249
    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    const/4 v2, 0x0

    .line 251
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v3, v4, :cond_0

    .line 252
    invoke-virtual {v1}, Landroid/graphics/drawable/GradientDrawable;->getColor()Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 254
    :cond_0
    iget-object v3, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mProgressColorStateList:Landroid/content/res/ColorStateList;

    if-nez v3, :cond_1

    if-eqz v2, :cond_1

    .line 255
    iput-object v2, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mProgressColorStateList:Landroid/content/res/ColorStateList;

    .line 257
    :cond_1
    iget-object v2, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mProgressColorStateList:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_3

    const/4 v3, 0x1

    new-array v4, v3, [I

    const v5, -0x101009e

    const/4 v6, 0x0

    aput v5, v4, v6

    iget v7, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mDefaultForegroundPrimaryDisableColor:I

    .line 258
    invoke-virtual {v2, v4, v7}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    iget v4, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mForegroundPrimaryDisableColor:I

    if-ne v2, v4, :cond_2

    iget-object v2, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mProgressColorStateList:Landroid/content/res/ColorStateList;

    sget-object v4, Lmiuix/androidbasewidget/widget/SeekBar;->ENABLED_STATE_SET:[I

    iget v7, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mDefaultForegroundPrimaryColor:I

    .line 259
    invoke-virtual {v2, v4, v7}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    iget v4, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mForegroundPrimaryColor:I

    if-eq v2, v4, :cond_3

    .line 260
    :cond_2
    invoke-virtual {v1}, Landroid/graphics/drawable/GradientDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    const/4 v2, 0x2

    new-array v4, v2, [I

    .line 261
    iget v7, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mForegroundPrimaryDisableColor:I

    aput v7, v4, v6

    iget v7, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mForegroundPrimaryColor:I

    aput v7, v4, v3

    new-array v2, v2, [[I

    new-array v7, v3, [I

    aput v5, v7, v6

    aput-object v7, v2, v6

    new-array v5, v6, [I

    aput-object v5, v2, v3

    .line 265
    new-instance v3, Landroid/content/res/ColorStateList;

    invoke-direct {v3, v2, v4}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 266
    iput-object v3, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mProgressColorStateList:Landroid/content/res/ColorStateList;

    .line 267
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    :cond_3
    const v1, 0x1020006

    .line 273
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 274
    instance-of v1, v0, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v1, :cond_5

    .line 275
    iget-boolean v1, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mMiddleEnabled:Z

    if-eqz v1, :cond_4

    iget p0, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mIconPrimaryColor:I

    goto :goto_0

    :cond_4
    iget p0, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mIconTransparent:I

    :goto_0
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_5
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    .line 283
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatSeekBar;->drawableStateChanged()V

    .line 284
    invoke-direct {p0}, Lmiuix/androidbasewidget/widget/SeekBar;->updatePrimaryColor()V

    .line 285
    invoke-virtual {p0}, Lmiuix/androidbasewidget/widget/SeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 287
    invoke-virtual {p0}, Lmiuix/androidbasewidget/widget/SeekBar;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 p0, 0xff

    goto :goto_0

    :cond_0
    const/high16 v1, 0x437f0000    # 255.0f

    iget p0, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mDisabledProgressAlpha:F

    mul-float/2addr p0, v1

    float-to-int p0, p0

    :goto_0
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_1
    return-void
.end method

.method public declared-synchronized getDraggableMaxPercentProgress()F
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "draggableProgress"
    .end annotation

    monitor-enter p0

    .line 157
    :try_start_0
    iget v0, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mDraggableMaxPercentProcess:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDraggableMinPercentProgress()F
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "draggableProgress"
    .end annotation

    monitor-enter p0

    .line 145
    :try_start_0
    iget v0, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mDraggableMinPercentProgress:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDraggableMaxPercentProcess(F)V
    .locals 4

    monitor-enter p0

    float-to-double v0, p1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v0, v2

    const/high16 v1, 0x3f800000    # 1.0f

    if-lez v0, :cond_0

    :try_start_0
    const-string p1, "SeekBar"

    const-string v0, "The draggableMaxPercentProcess value should not be higher than the max value, reset to 1.0"

    .line 196
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    move p1, v1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    const-string p1, "SeekBar"

    const-string v0, "The draggableMaxPercentProcess value should not be lower than the min value, reset to 1.0"

    .line 199
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 202
    :cond_1
    :goto_1
    iget v0, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mDraggableMinPercentProgress:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_2

    const-string p1, "SeekBar"

    const-string v0, "The draggableMaxPercentProcess value should not be lower than draggableMinPercentProcess value, reset to 1.0"

    .line 204
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v1

    .line 206
    :cond_2
    iput p1, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mDraggableMaxPercentProcess:F

    .line 208
    iget p1, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mDraggableMaxPercentProcess:F

    invoke-direct {p0, p1}, Lmiuix/androidbasewidget/widget/SeekBar;->getProgressForm(F)I

    move-result p1

    .line 209
    invoke-virtual {p0}, Lmiuix/androidbasewidget/widget/SeekBar;->getProgress()I

    move-result v0

    if-le v0, p1, :cond_3

    .line 210
    invoke-virtual {p0, p1}, Lmiuix/androidbasewidget/widget/SeekBar;->setProgress(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    :cond_3
    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setDraggableMinPercentProgress(F)V
    .locals 6

    monitor-enter p0

    float-to-double v0, p1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, v0, v2

    const/4 v3, 0x0

    if-lez v2, :cond_0

    :try_start_0
    const-string p1, "SeekBar"

    const-string v0, "The draggableMinPercentProgress value should not be higher than 1.0, reset to 0.0"

    .line 169
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    move p1, v3

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    const-wide/16 v4, 0x0

    cmpg-double v0, v0, v4

    if-gez v0, :cond_1

    const-string p1, "SeekBar"

    const-string v0, "The draggableMinPercentProgress value should not be lower than 0.0, reset to 0.0"

    .line 172
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 175
    :cond_1
    :goto_1
    iget v0, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mDraggableMaxPercentProcess:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    const-string p1, "SeekBar"

    const-string v0, "The draggableMinPercentProgress value should not be higher than draggableMaxPercentProcess value, reset to 0.0"

    .line 177
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v3

    .line 179
    :cond_2
    iput p1, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mDraggableMinPercentProgress:F

    .line 181
    iget p1, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mDraggableMinPercentProgress:F

    invoke-direct {p0, p1}, Lmiuix/androidbasewidget/widget/SeekBar;->getProgressForm(F)I

    move-result p1

    .line 182
    invoke-virtual {p0}, Lmiuix/androidbasewidget/widget/SeekBar;->getProgress()I

    move-result v0

    if-ge v0, p1, :cond_3

    .line 183
    invoke-virtual {p0, p1}, Lmiuix/androidbasewidget/widget/SeekBar;->setProgress(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    :cond_3
    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0

    throw p1
.end method

.method public setIconPrimaryColor(I)V
    .locals 0

    .line 236
    iput p1, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mIconPrimaryColor:I

    .line 237
    invoke-direct {p0}, Lmiuix/androidbasewidget/widget/SeekBar;->updatePrimaryColor()V

    return-void
.end method

.method public setMiddleEnabled(Z)V
    .locals 1

    .line 223
    iget-boolean v0, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mMiddleEnabled:Z

    if-eq p1, v0, :cond_0

    .line 224
    iput-boolean p1, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mMiddleEnabled:Z

    .line 225
    invoke-direct {p0}, Lmiuix/androidbasewidget/widget/SeekBar;->updatePrimaryColor()V

    :cond_0
    return-void
.end method

.method public setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V
    .locals 1

    .line 215
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mTrainsOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-ne p1, v0, :cond_0

    .line 216
    invoke-super {p0, v0}, Landroidx/appcompat/widget/AppCompatSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    goto :goto_0

    .line 218
    :cond_0
    iput-object p1, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    :goto_0
    return-void
.end method
