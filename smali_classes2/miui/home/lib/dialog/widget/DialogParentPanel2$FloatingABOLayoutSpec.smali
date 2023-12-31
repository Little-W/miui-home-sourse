.class Lmiui/home/lib/dialog/widget/DialogParentPanel2$FloatingABOLayoutSpec;
.super Ljava/lang/Object;
.source "DialogParentPanel2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/home/lib/dialog/widget/DialogParentPanel2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FloatingABOLayoutSpec"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mFixedHeightMajor:Landroid/util/TypedValue;

.field private mFixedHeightMinor:Landroid/util/TypedValue;

.field private mFixedWidthMajor:Landroid/util/TypedValue;

.field private mFixedWidthMinor:Landroid/util/TypedValue;

.field private mMaxHeightMajor:Landroid/util/TypedValue;

.field private mMaxHeightMinor:Landroid/util/TypedValue;

.field private mMaxWidthMajor:Landroid/util/TypedValue;

.field private mMaxWidthMinor:Landroid/util/TypedValue;

.field private mScreenHeightDp:I

.field private final mScreenSize:Landroid/graphics/Point;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lmiui/home/lib/dialog/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mScreenSize:Landroid/graphics/Point;

    .line 75
    iput-object p1, p0, Lmiui/home/lib/dialog/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mContext:Landroid/content/Context;

    .line 76
    invoke-direct {p0, p1, p2}, Lmiui/home/lib/dialog/widget/DialogParentPanel2$FloatingABOLayoutSpec;->parseWindowSize(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    iget-object p2, p0, Lmiui/home/lib/dialog/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lmiui/home/lib/dialog/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mScreenSize:Landroid/graphics/Point;

    invoke-static {p2, v0}, Lmiui/home/lib/dialog/utils/WindowUtils;->getScreenSize(Landroid/content/Context;Landroid/graphics/Point;)V

    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 79
    iget-object p2, p0, Lmiui/home/lib/dialog/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mScreenSize:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->y:I

    int-to-float p2, p2

    div-float/2addr p2, p1

    float-to-int p1, p2

    iput p1, p0, Lmiui/home/lib/dialog/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mScreenHeightDp:I

    return-void
.end method

.method public static getDeviceType()Ljava/lang/Object;
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.os.SystemProperties"

    .line 178
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getInt"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "persist.sys.muiltdisplay_type"

    aput-object v4, v3, v0

    .line 179
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    const-string v2, "MIUIxDialog: "

    const-string v3, "invokeObject"

    .line 181
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 183
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private getMeasureSpec(IZLandroid/util/TypedValue;Landroid/util/TypedValue;Landroid/util/TypedValue;Landroid/util/TypedValue;)I
    .locals 2

    .line 134
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_3

    .line 137
    invoke-direct {p0}, Lmiui/home/lib/dialog/widget/DialogParentPanel2$FloatingABOLayoutSpec;->useMinor()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p3, p4

    .line 139
    :goto_0
    invoke-direct {p0, p3, p2}, Lmiui/home/lib/dialog/widget/DialogParentPanel2$FloatingABOLayoutSpec;->resolveDimension(Landroid/util/TypedValue;Z)I

    move-result p3

    if-lez p3, :cond_1

    const/high16 p0, 0x40000000    # 2.0f

    .line 142
    invoke-static {p3, p0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_2

    :cond_1
    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move-object p5, p6

    .line 145
    :goto_1
    invoke-direct {p0, p5, p2}, Lmiui/home/lib/dialog/widget/DialogParentPanel2$FloatingABOLayoutSpec;->resolveDimension(Landroid/util/TypedValue;Z)I

    move-result p0

    if-lez p0, :cond_3

    .line 147
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 148
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {p0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    :cond_3
    :goto_2
    return p1
.end method

.method private isActivity(Landroid/content/Context;)Z
    .locals 0

    .line 200
    :goto_0
    instance-of p0, p1, Landroid/content/ContextWrapper;

    if-eqz p0, :cond_1

    .line 201
    instance-of p0, p1, Landroid/app/Activity;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 204
    :cond_0
    check-cast p1, Landroid/content/ContextWrapper;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private isFoldLargeScreen()Z
    .locals 2

    .line 170
    iget-object p0, p0, Lmiui/home/lib/dialog/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->screenLayout:I

    .line 171
    invoke-static {}, Lmiui/home/lib/dialog/widget/DialogParentPanel2$FloatingABOLayoutSpec;->getDeviceType()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    and-int/lit8 v0, p0, 0xf

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    :cond_0
    and-int/lit8 p0, p0, 0xf

    const/4 v0, 0x4

    if-ne p0, v0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isPortrait()Z
    .locals 4

    .line 188
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x1f

    if-ge v0, v3, :cond_2

    iget-object v0, p0, Lmiui/home/lib/dialog/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lmiui/home/lib/dialog/widget/DialogParentPanel2$FloatingABOLayoutSpec;->isActivity(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 195
    :cond_0
    iget-object p0, p0, Lmiui/home/lib/dialog/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    if-ne p0, v2, :cond_1

    move v1, v2

    :cond_1
    return v1

    .line 189
    :cond_2
    :goto_0
    iget-object p0, p0, Lmiui/home/lib/dialog/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    if-ne p0, v2, :cond_3

    move v1, v2

    :cond_3
    return v1
.end method

.method private parseWindowSize(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    .line 86
    :cond_0
    sget-object v0, Lmiuix/appcompat/R$styleable;->Window:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 87
    sget p2, Lmiuix/appcompat/R$styleable;->Window_windowFixedWidthMinor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 88
    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    iput-object p2, p0, Lmiui/home/lib/dialog/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mFixedWidthMinor:Landroid/util/TypedValue;

    .line 89
    sget p2, Lmiuix/appcompat/R$styleable;->Window_windowFixedWidthMinor:I

    iget-object v0, p0, Lmiui/home/lib/dialog/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mFixedWidthMinor:Landroid/util/TypedValue;

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 91
    :cond_1
    sget p2, Lmiuix/appcompat/R$styleable;->Window_windowFixedHeightMajor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 92
    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    iput-object p2, p0, Lmiui/home/lib/dialog/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mFixedHeightMajor:Landroid/util/TypedValue;

    .line 93
    sget p2, Lmiuix/appcompat/R$styleable;->Window_windowFixedHeightMajor:I

    iget-object v0, p0, Lmiui/home/lib/dialog/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mFixedHeightMajor:Landroid/util/TypedValue;

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 95
    :cond_2
    sget p2, Lmiuix/appcompat/R$styleable;->Window_windowFixedWidthMajor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 96
    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    iput-object p2, p0, Lmiui/home/lib/dialog/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mFixedWidthMajor:Landroid/util/TypedValue;

    .line 97
    sget p2, Lmiuix/appcompat/R$styleable;->Window_windowFixedWidthMajor:I

    iget-object v0, p0, Lmiui/home/lib/dialog/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mFixedWidthMajor:Landroid/util/TypedValue;

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 99
    :cond_3
    sget p2, Lmiuix/appcompat/R$styleable;->Window_windowFixedHeightMinor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 100
    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    iput-object p2, p0, Lmiui/home/lib/dialog/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mFixedHeightMinor:Landroid/util/TypedValue;

    .line 101
    sget p2, Lmiuix/appcompat/R$styleable;->Window_windowFixedHeightMinor:I

    iget-object v0, p0, Lmiui/home/lib/dialog/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mFixedHeightMinor:Landroid/util/TypedValue;

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 103
    :cond_4
    sget p2, Lmiuix/appcompat/R$styleable;->Window_windowMaxWidthMinor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 104
    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    iput-object p2, p0, Lmiui/home/lib/dialog/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mMaxWidthMinor:Landroid/util/TypedValue;

    .line 105
    sget p2, Lmiuix/appcompat/R$styleable;->Window_windowMaxWidthMinor:I

    iget-object v0, p0, Lmiui/home/lib/dialog/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mMaxWidthMinor:Landroid/util/TypedValue;

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 107
    :cond_5
    sget p2, Lmiuix/appcompat/R$styleable;->Window_windowMaxWidthMajor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 108
    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    iput-object p2, p0, Lmiui/home/lib/dialog/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mMaxWidthMajor:Landroid/util/TypedValue;

    .line 109
    sget p2, Lmiuix/appcompat/R$styleable;->Window_windowMaxWidthMajor:I

    iget-object v0, p0, Lmiui/home/lib/dialog/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mMaxWidthMajor:Landroid/util/TypedValue;

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 111
    :cond_6
    sget p2, Lmiuix/appcompat/R$styleable;->Window_windowMaxHeightMajor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 112
    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    iput-object p2, p0, Lmiui/home/lib/dialog/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mMaxHeightMajor:Landroid/util/TypedValue;

    .line 113
    sget p2, Lmiuix/appcompat/R$styleable;->Window_windowMaxHeightMajor:I

    iget-object v0, p0, Lmiui/home/lib/dialog/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mMaxHeightMajor:Landroid/util/TypedValue;

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 115
    :cond_7
    sget p2, Lmiuix/appcompat/R$styleable;->Window_windowMaxHeightMinor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 116
    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    iput-object p2, p0, Lmiui/home/lib/dialog/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mMaxHeightMinor:Landroid/util/TypedValue;

    .line 117
    sget p2, Lmiuix/appcompat/R$styleable;->Window_windowMaxHeightMinor:I

    iget-object p0, p0, Lmiui/home/lib/dialog/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mMaxHeightMinor:Landroid/util/TypedValue;

    invoke-virtual {p1, p2, p0}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 119
    :cond_8
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private resolveDimension(Landroid/util/TypedValue;Z)I
    .locals 2

    if-eqz p1, :cond_2

    .line 211
    iget v0, p1, Landroid/util/TypedValue;->type:I

    if-eqz v0, :cond_2

    .line 212
    iget v0, p1, Landroid/util/TypedValue;->type:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 213
    iget-object p0, p0, Lmiui/home/lib/dialog/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result p0

    :goto_0
    float-to-int p0, p0

    goto :goto_2

    .line 214
    :cond_0
    iget v0, p1, Landroid/util/TypedValue;->type:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    .line 215
    iget-object p0, p0, Lmiui/home/lib/dialog/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mScreenSize:Landroid/graphics/Point;

    if-eqz p2, :cond_1

    iget p0, p0, Landroid/graphics/Point;->x:I

    goto :goto_1

    :cond_1
    iget p0, p0, Landroid/graphics/Point;->y:I

    :goto_1
    int-to-float p0, p0

    .line 216
    invoke-virtual {p1, p0, p0}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result p0

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_2
    return p0
.end method

.method private useMinor()Z
    .locals 3

    .line 160
    invoke-direct {p0}, Lmiui/home/lib/dialog/widget/DialogParentPanel2$FloatingABOLayoutSpec;->isFoldLargeScreen()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 162
    :cond_0
    invoke-direct {p0}, Lmiui/home/lib/dialog/widget/DialogParentPanel2$FloatingABOLayoutSpec;->isPortrait()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    .line 165
    :cond_1
    iget p0, p0, Lmiui/home/lib/dialog/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mScreenHeightDp:I

    const/16 v0, 0x1f4

    if-lt p0, v0, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method


# virtual methods
.method public getHeightMeasureSpecForDialog(I)I
    .locals 7

    .line 128
    iget-object v3, p0, Lmiui/home/lib/dialog/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mFixedHeightMinor:Landroid/util/TypedValue;

    iget-object v4, p0, Lmiui/home/lib/dialog/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mFixedHeightMajor:Landroid/util/TypedValue;

    iget-object v5, p0, Lmiui/home/lib/dialog/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mMaxHeightMinor:Landroid/util/TypedValue;

    iget-object v6, p0, Lmiui/home/lib/dialog/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mMaxHeightMajor:Landroid/util/TypedValue;

    const/4 v2, 0x0

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v6}, Lmiui/home/lib/dialog/widget/DialogParentPanel2$FloatingABOLayoutSpec;->getMeasureSpec(IZLandroid/util/TypedValue;Landroid/util/TypedValue;Landroid/util/TypedValue;Landroid/util/TypedValue;)I

    move-result p0

    return p0
.end method

.method public getWidthMeasureSpecForDialog(I)I
    .locals 7

    .line 123
    iget-object v3, p0, Lmiui/home/lib/dialog/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mFixedWidthMinor:Landroid/util/TypedValue;

    iget-object v4, p0, Lmiui/home/lib/dialog/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mFixedWidthMajor:Landroid/util/TypedValue;

    iget-object v5, p0, Lmiui/home/lib/dialog/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mMaxWidthMinor:Landroid/util/TypedValue;

    iget-object v6, p0, Lmiui/home/lib/dialog/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mMaxWidthMajor:Landroid/util/TypedValue;

    const/4 v2, 0x1

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v6}, Lmiui/home/lib/dialog/widget/DialogParentPanel2$FloatingABOLayoutSpec;->getMeasureSpec(IZLandroid/util/TypedValue;Landroid/util/TypedValue;Landroid/util/TypedValue;Landroid/util/TypedValue;)I

    move-result p0

    return p0
.end method

.method public onConfigurationChanged()V
    .locals 2

    .line 223
    iget-object v0, p0, Lmiui/home/lib/dialog/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mContext:Landroid/content/Context;

    sget v1, Lmiuix/appcompat/R$attr;->windowFixedWidthMinor:I

    invoke-static {v0, v1}, Lmiuix/internal/util/AttributeResolver;->resolveTypedValue(Landroid/content/Context;I)Landroid/util/TypedValue;

    move-result-object v0

    iput-object v0, p0, Lmiui/home/lib/dialog/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mFixedWidthMinor:Landroid/util/TypedValue;

    .line 224
    iget-object v0, p0, Lmiui/home/lib/dialog/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mContext:Landroid/content/Context;

    sget v1, Lmiuix/appcompat/R$attr;->windowFixedHeightMajor:I

    invoke-static {v0, v1}, Lmiuix/internal/util/AttributeResolver;->resolveTypedValue(Landroid/content/Context;I)Landroid/util/TypedValue;

    move-result-object v0

    iput-object v0, p0, Lmiui/home/lib/dialog/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mFixedHeightMajor:Landroid/util/TypedValue;

    .line 225
    iget-object v0, p0, Lmiui/home/lib/dialog/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mContext:Landroid/content/Context;

    sget v1, Lmiuix/appcompat/R$attr;->windowFixedWidthMajor:I

    invoke-static {v0, v1}, Lmiuix/internal/util/AttributeResolver;->resolveTypedValue(Landroid/content/Context;I)Landroid/util/TypedValue;

    move-result-object v0

    iput-object v0, p0, Lmiui/home/lib/dialog/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mFixedWidthMajor:Landroid/util/TypedValue;

    .line 226
    iget-object v0, p0, Lmiui/home/lib/dialog/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mContext:Landroid/content/Context;

    sget v1, Lmiuix/appcompat/R$attr;->windowFixedHeightMinor:I

    invoke-static {v0, v1}, Lmiuix/internal/util/AttributeResolver;->resolveTypedValue(Landroid/content/Context;I)Landroid/util/TypedValue;

    move-result-object v0

    iput-object v0, p0, Lmiui/home/lib/dialog/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mFixedHeightMinor:Landroid/util/TypedValue;

    .line 227
    iget-object v0, p0, Lmiui/home/lib/dialog/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mContext:Landroid/content/Context;

    sget v1, Lmiuix/appcompat/R$attr;->windowMaxWidthMinor:I

    invoke-static {v0, v1}, Lmiuix/internal/util/AttributeResolver;->resolveTypedValue(Landroid/content/Context;I)Landroid/util/TypedValue;

    move-result-object v0

    iput-object v0, p0, Lmiui/home/lib/dialog/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mMaxWidthMinor:Landroid/util/TypedValue;

    .line 228
    iget-object v0, p0, Lmiui/home/lib/dialog/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mContext:Landroid/content/Context;

    sget v1, Lmiuix/appcompat/R$attr;->windowMaxWidthMajor:I

    invoke-static {v0, v1}, Lmiuix/internal/util/AttributeResolver;->resolveTypedValue(Landroid/content/Context;I)Landroid/util/TypedValue;

    move-result-object v0

    iput-object v0, p0, Lmiui/home/lib/dialog/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mMaxWidthMajor:Landroid/util/TypedValue;

    .line 229
    iget-object v0, p0, Lmiui/home/lib/dialog/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mContext:Landroid/content/Context;

    sget v1, Lmiuix/appcompat/R$attr;->windowMaxHeightMinor:I

    invoke-static {v0, v1}, Lmiuix/internal/util/AttributeResolver;->resolveTypedValue(Landroid/content/Context;I)Landroid/util/TypedValue;

    move-result-object v0

    iput-object v0, p0, Lmiui/home/lib/dialog/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mMaxHeightMinor:Landroid/util/TypedValue;

    .line 230
    iget-object v0, p0, Lmiui/home/lib/dialog/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mContext:Landroid/content/Context;

    sget v1, Lmiuix/appcompat/R$attr;->windowMaxHeightMajor:I

    invoke-static {v0, v1}, Lmiuix/internal/util/AttributeResolver;->resolveTypedValue(Landroid/content/Context;I)Landroid/util/TypedValue;

    move-result-object v0

    iput-object v0, p0, Lmiui/home/lib/dialog/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mMaxHeightMajor:Landroid/util/TypedValue;

    .line 231
    iget-object v0, p0, Lmiui/home/lib/dialog/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lmiui/home/lib/dialog/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mScreenSize:Landroid/graphics/Point;

    invoke-static {v0, v1}, Lmiui/home/lib/dialog/utils/WindowUtils;->getScreenSize(Landroid/content/Context;Landroid/graphics/Point;)V

    .line 232
    iget-object v0, p0, Lmiui/home/lib/dialog/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 233
    iget-object v1, p0, Lmiui/home/lib/dialog/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mScreenSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    div-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, p0, Lmiui/home/lib/dialog/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mScreenHeightDp:I

    return-void
.end method
