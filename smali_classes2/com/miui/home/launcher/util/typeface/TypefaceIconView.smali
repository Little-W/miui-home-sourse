.class public Lcom/miui/home/launcher/util/typeface/TypefaceIconView;
.super Landroid/widget/TextView;
.source "TypefaceIconView.java"


# instance fields
.field mFontName:Ljava/lang/String;

.field mPattern:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/util/typeface/TypefaceIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 30
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/util/typeface/TypefaceIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    sget-object v0, Lcom/miui/home/R$styleable;->TypefaceIconView:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    const-string p3, "mihome_icons.ttf"

    .line 36
    iput-object p3, p0, Lcom/miui/home/launcher/util/typeface/TypefaceIconView;->mFontName:Ljava/lang/String;

    .line 38
    :try_start_0
    invoke-virtual {p2, v1, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    .line 39
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/util/typeface/TypefaceIconView;->setPattern(I)V

    const/4 v0, 0x1

    const/high16 v1, -0x1000000

    .line 41
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 42
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/util/typeface/TypefaceIconView;->setPatternColor(I)V

    .line 44
    invoke-static {p1, p3}, Lcom/miui/home/launcher/util/typeface/FontUtils;->getFont(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/util/typeface/TypefaceIconView;->setTypeface(Landroid/graphics/Typeface;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 46
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    :goto_0
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :goto_1
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 49
    throw p0
.end method

.method private setTypeface(I)V
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/miui/home/launcher/util/typeface/TypefaceIconView;->mFontName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    invoke-virtual {p0}, Lcom/miui/home/launcher/util/typeface/TypefaceIconView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/util/typeface/TypefaceIconView;->mFontName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/home/launcher/util/typeface/FontUtils;->getFont(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {p0, v0, p1}, Lcom/miui/home/launcher/util/typeface/TypefaceIconView;->setTypeface(Landroid/graphics/Typeface;I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final getIcon()I
    .locals 0

    .line 96
    iget p0, p0, Lcom/miui/home/launcher/util/typeface/TypefaceIconView;->mPattern:I

    return p0
.end method

.method public getPattern()I
    .locals 0

    .line 92
    iget p0, p0, Lcom/miui/home/launcher/util/typeface/TypefaceIconView;->mPattern:I

    return p0
.end method

.method public getPatternColor()I
    .locals 0

    .line 82
    invoke-virtual {p0}, Lcom/miui/home/launcher/util/typeface/TypefaceIconView;->getCurrentTextColor()I

    move-result p0

    return p0
.end method

.method public getPatternSize()F
    .locals 0

    .line 74
    invoke-virtual {p0}, Lcom/miui/home/launcher/util/typeface/TypefaceIconView;->getTextSize()F

    move-result p0

    return p0
.end method

.method public setPattern(I)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [C

    int-to-char v1, p1

    const/4 v2, 0x0

    aput-char v1, v0, v2

    .line 87
    iput p1, p0, Lcom/miui/home/launcher/util/typeface/TypefaceIconView;->mPattern:I

    .line 88
    array-length p1, v0

    invoke-virtual {p0, v0, v2, p1}, Lcom/miui/home/launcher/util/typeface/TypefaceIconView;->setText([CII)V

    return-void
.end method

.method public setPatternColor(I)V
    .locals 0

    .line 78
    invoke-super {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public setPatternSize(F)V
    .locals 1

    const/4 v0, 0x2

    .line 66
    invoke-virtual {p0, v0, p1}, Lcom/miui/home/launcher/util/typeface/TypefaceIconView;->setPatternSize(IF)V

    return-void
.end method

.method public setPatternSize(IF)V
    .locals 0

    .line 70
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method
