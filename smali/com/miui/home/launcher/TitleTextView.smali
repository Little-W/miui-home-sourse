.class public Lcom/miui/home/launcher/TitleTextView;
.super Landroid/widget/TextView;
.source "TitleTextView.java"


# static fields
.field private static sNullLayoutMethod:Ljava/lang/reflect/Method;


# instance fields
.field private mIndicatorDrawableMargin:I

.field private mIsShowNewInstallNotification:Z

.field private mIsShowSpeedOfLightIndicator:Z

.field private mNotificationDrawable:Landroid/graphics/drawable/Drawable;

.field private mSpeedOfLightDawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 38
    :try_start_0
    const-class v0, Landroid/widget/TextView;

    const-string v1, "nullLayouts"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/TitleTextView;->sNullLayoutMethod:Ljava/lang/reflect/Method;

    .line 39
    sget-object v0, Lcom/miui/home/launcher/TitleTextView;->sNullLayoutMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "TitleTextView"

    const-string v2, "Failed to get TextView#nullLayouts() method"

    .line 41
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 46
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p2

    invoke-virtual {p2}, Lcom/miui/home/launcher/Application;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f070177

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/miui/home/launcher/TitleTextView;->mIndicatorDrawableMargin:I

    .line 48
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->getCurrentMode()Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object p2

    invoke-virtual {p2}, Lcom/miui/home/launcher/allapps/LauncherMode;->getShortcutTitleScale()F

    move-result p2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0704a3

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    mul-float/2addr p2, p1

    const/4 p1, 0x0

    .line 47
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/TitleTextView;->setTextSize(IF)V

    return-void
.end method

.method private changeMaxLines(I)V
    .locals 1

    .line 73
    invoke-virtual {p0}, Lcom/miui/home/launcher/TitleTextView;->getMaxLines()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 74
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/TitleTextView;->setMaxLines(I)V

    .line 75
    invoke-direct {p0}, Lcom/miui/home/launcher/TitleTextView;->nullLayouts()V

    :cond_0
    return-void
.end method

.method private getNotificationDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 126
    iget-object v0, p0, Lcom/miui/home/launcher/TitleTextView;->mNotificationDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 127
    invoke-virtual {p0}, Lcom/miui/home/launcher/TitleTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080530

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/TitleTextView;->mNotificationDrawable:Landroid/graphics/drawable/Drawable;

    .line 128
    iget-object v0, p0, Lcom/miui/home/launcher/TitleTextView;->mNotificationDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {}, Lcom/miui/home/launcher/newInstallIndicator/NewInstallIndicatorController;->getController()Lcom/miui/home/launcher/newInstallIndicator/NewInstallIndicatorController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/newInstallIndicator/NewInstallIndicatorController;->getIndicatorColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/TitleTextView;->mNotificationDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private getSeepOfLightDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/miui/home/launcher/TitleTextView;->mSpeedOfLightDawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 120
    invoke-virtual {p0}, Lcom/miui/home/launcher/TitleTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08059b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/TitleTextView;->mSpeedOfLightDawable:Landroid/graphics/drawable/Drawable;

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/TitleTextView;->mSpeedOfLightDawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private nullLayouts()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateApi"
        }
    .end annotation

    .line 81
    invoke-virtual {p0}, Lcom/miui/home/launcher/TitleTextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/home/launcher/TitleTextView;->sNullLayoutMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 83
    :try_start_0
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "TitleTextView"

    const-string v2, "Failed to invoke TextView#nullLayouts() method"

    .line 85
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 135
    invoke-super {p0, p1}, Landroid/widget/TextView;->draw(Landroid/graphics/Canvas;)V

    .line 136
    invoke-virtual {p0}, Lcom/miui/home/launcher/TitleTextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/miui/home/launcher/TitleTextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    .line 138
    iget-boolean v1, p0, Lcom/miui/home/launcher/TitleTextView;->mIsShowSpeedOfLightIndicator:Z

    if-eqz v1, :cond_0

    .line 139
    invoke-direct {p0}, Lcom/miui/home/launcher/TitleTextView;->getSeepOfLightDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 140
    :cond_0
    iget-boolean v1, p0, Lcom/miui/home/launcher/TitleTextView;->mIsShowNewInstallNotification:Z

    if-eqz v1, :cond_1

    .line 141
    invoke-direct {p0}, Lcom/miui/home/launcher/TitleTextView;->getNotificationDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 144
    invoke-virtual {p0}, Lcom/miui/home/launcher/TitleTextView;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/miui/home/launcher/TitleTextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/miui/home/launcher/TitleTextView;->mIndicatorDrawableMargin:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    .line 145
    invoke-virtual {p0}, Lcom/miui/home/launcher/TitleTextView;->getLineHeight()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    const/4 v3, 0x0

    .line 146
    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v4

    float-to-int v4, v4

    float-to-int v5, v2

    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v1, v3

    float-to-int v1, v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v4, v5, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 147
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    .line 63
    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->getLineHeight(Landroid/widget/TextView;)I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/miui/home/launcher/TitleTextView;->getMeasuredHeight()I

    move-result v2

    div-int/2addr v2, v0

    const/4 v0, 0x2

    .line 66
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 68
    :cond_0
    invoke-direct {p0, v1}, Lcom/miui/home/launcher/TitleTextView;->changeMaxLines(I)V

    .line 69
    invoke-super/range {p0 .. p5}, Landroid/widget/TextView;->onLayout(ZIIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 53
    invoke-virtual {p0}, Lcom/miui/home/launcher/TitleTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {p0}, Lcom/miui/home/launcher/TitleTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 55
    invoke-virtual {p0}, Lcom/miui/home/launcher/TitleTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/home/launcher/compat/LauncherThemeCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/compat/LauncherThemeCompat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/compat/LauncherThemeCompat;->getTitleMarginTop()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 57
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    return-void
.end method

.method public updateNewInstallIndicator(Z)V
    .locals 2

    .line 91
    iget-boolean v0, p0, Lcom/miui/home/launcher/TitleTextView;->mIsShowNewInstallNotification:Z

    if-eq v0, p1, :cond_1

    .line 92
    iput-boolean p1, p0, Lcom/miui/home/launcher/TitleTextView;->mIsShowNewInstallNotification:Z

    .line 93
    invoke-direct {p0}, Lcom/miui/home/launcher/TitleTextView;->getNotificationDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 96
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    iget v0, p0, Lcom/miui/home/launcher/TitleTextView;->mIndicatorDrawableMargin:I

    add-int/2addr p1, v0

    goto :goto_0

    .line 98
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/TitleTextView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07049f

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 100
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/TitleTextView;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/TitleTextView;->getPaddingBottom()I

    move-result v1

    invoke-virtual {p0, p1, v0, p1, v1}, Lcom/miui/home/launcher/TitleTextView;->setPadding(IIII)V

    :cond_1
    return-void
.end method

.method public updateSpeedOfLightIndicator(Z)V
    .locals 2

    .line 105
    iget-boolean v0, p0, Lcom/miui/home/launcher/TitleTextView;->mIsShowSpeedOfLightIndicator:Z

    if-eq v0, p1, :cond_1

    .line 106
    iput-boolean p1, p0, Lcom/miui/home/launcher/TitleTextView;->mIsShowSpeedOfLightIndicator:Z

    .line 107
    invoke-direct {p0}, Lcom/miui/home/launcher/TitleTextView;->getSeepOfLightDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 110
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    iget v0, p0, Lcom/miui/home/launcher/TitleTextView;->mIndicatorDrawableMargin:I

    add-int/2addr p1, v0

    goto :goto_0

    .line 112
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/TitleTextView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07049f

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 114
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/TitleTextView;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/TitleTextView;->getPaddingBottom()I

    move-result v1

    invoke-virtual {p0, p1, v0, p1, v1}, Lcom/miui/home/launcher/TitleTextView;->setPadding(IIII)V

    :cond_1
    return-void
.end method
