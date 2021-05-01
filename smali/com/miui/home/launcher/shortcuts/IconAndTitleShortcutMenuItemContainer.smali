.class public Lcom/miui/home/launcher/shortcuts/IconAndTitleShortcutMenuItemContainer;
.super Landroid/widget/LinearLayout;
.source "IconAndTitleShortcutMenuItemContainer.java"


# instance fields
.field private mHasData:Z

.field private mIcon:Landroid/widget/ImageView;

.field private mLauncher:Lcom/miui/home/launcher/Launcher;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    invoke-static {p0}, Lcom/miui/home/launcher/Launcher;->getLauncher(Landroid/view/View;)Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/shortcuts/IconAndTitleShortcutMenuItemContainer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-void
.end method

.method private calculateWordsWidth(Ljava/lang/CharSequence;)F
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/IconAndTitleShortcutMenuItemContainer;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result p1

    return p1
.end method

.method private getMenuItemTitleMaxWidth()I
    .locals 3

    .line 71
    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/IconAndTitleShortcutMenuItemContainer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/IconAndTitleShortcutMenuItemContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700f0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    sub-float/2addr v0, v1

    .line 72
    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/IconAndTitleShortcutMenuItemContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700ef

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    sub-float/2addr v0, v1

    .line 73
    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/IconAndTitleShortcutMenuItemContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700ee

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    sub-float/2addr v0, v1

    .line 74
    iget-object v1, p0, Lcom/miui/home/launcher/shortcuts/IconAndTitleShortcutMenuItemContainer;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/miui/home/launcher/shortcuts/IconAndTitleShortcutMenuItemContainer;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTotalPaddingRight()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private getSuitableTitle(Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;)Ljava/lang/CharSequence;
    .locals 3

    .line 58
    invoke-virtual {p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;->getLongTitle()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 59
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/shortcuts/IconAndTitleShortcutMenuItemContainer;->calculateWordsWidth(Ljava/lang/CharSequence;)F

    move-result v1

    invoke-direct {p0}, Lcom/miui/home/launcher/shortcuts/IconAndTitleShortcutMenuItemContainer;->getMenuItemTitleMaxWidth()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    return-object v0

    .line 62
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;->getShortTitle()Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic lambda$bindShortcutMenuItem$325(Lcom/miui/home/launcher/shortcuts/IconAndTitleShortcutMenuItemContainer;Landroid/view/View$OnClickListener;Landroid/view/View;)V
    .locals 0

    .line 51
    invoke-interface {p1, p2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 52
    iget-object p1, p0, Lcom/miui/home/launcher/shortcuts/IconAndTitleShortcutMenuItemContainer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/miui/home/launcher/util/UiThreadHelper;->hideKeyboardAsync(Landroid/content/Context;Landroid/os/IBinder;)V

    return-void
.end method


# virtual methods
.method public bindShortcutMenuItem(Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;)V
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/IconAndTitleShortcutMenuItemContainer;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 48
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/IconAndTitleShortcutMenuItemContainer;->mTitle:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/shortcuts/IconAndTitleShortcutMenuItemContainer;->getSuitableTitle(Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    invoke-virtual {p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;->getOnClickListener()Landroid/view/View$OnClickListener;

    move-result-object p1

    .line 50
    new-instance v0, Lcom/miui/home/launcher/shortcuts/-$$Lambda$IconAndTitleShortcutMenuItemContainer$N1BfQxIvoeKJcQVs75MqrzSmgqE;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/launcher/shortcuts/-$$Lambda$IconAndTitleShortcutMenuItemContainer$N1BfQxIvoeKJcQVs75MqrzSmgqE;-><init>(Lcom/miui/home/launcher/shortcuts/IconAndTitleShortcutMenuItemContainer;Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/shortcuts/IconAndTitleShortcutMenuItemContainer;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p1, 0x1

    .line 54
    iput-boolean p1, p0, Lcom/miui/home/launcher/shortcuts/IconAndTitleShortcutMenuItemContainer;->mHasData:Z

    return-void
.end method

.method public getItemHeight(F)I
    .locals 4

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    return v1

    .line 96
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/IconAndTitleShortcutMenuItemContainer;->getMeasuredHeight()I

    move-result v0

    if-lez v0, :cond_1

    .line 97
    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/IconAndTitleShortcutMenuItemContainer;->getMeasuredHeight()I

    move-result p1

    return p1

    .line 99
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/IconAndTitleShortcutMenuItemContainer;->mTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/IconAndTitleShortcutMenuItemContainer;->mIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 100
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v0, v0

    .line 101
    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/IconAndTitleShortcutMenuItemContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070272

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    add-float/2addr v0, v1

    .line 102
    iget-object v1, p0, Lcom/miui/home/launcher/shortcuts/IconAndTitleShortcutMenuItemContainer;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLineHeight()I

    move-result v1

    .line 103
    iget-object v2, p0, Lcom/miui/home/launcher/shortcuts/IconAndTitleShortcutMenuItemContainer;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/miui/home/launcher/shortcuts/IconAndTitleShortcutMenuItemContainer;->calculateWordsWidth(Ljava/lang/CharSequence;)F

    move-result v2

    iget-object v3, p0, Lcom/miui/home/launcher/shortcuts/IconAndTitleShortcutMenuItemContainer;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr p1, v3

    iget-object v3, p0, Lcom/miui/home/launcher/shortcuts/IconAndTitleShortcutMenuItemContainer;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getTotalPaddingRight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr p1, v3

    div-float/2addr v2, p1

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int p1, v2

    mul-int/2addr v1, p1

    int-to-float p1, v1

    .line 105
    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/IconAndTitleShortcutMenuItemContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070274

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    add-float/2addr p1, v1

    .line 106
    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/IconAndTitleShortcutMenuItemContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070275

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    add-float/2addr p1, v1

    add-float/2addr v0, p1

    float-to-int p1, v0

    return p1

    :cond_2
    return v1
.end method

.method public hasData()Z
    .locals 1

    .line 85
    iget-boolean v0, p0, Lcom/miui/home/launcher/shortcuts/IconAndTitleShortcutMenuItemContainer;->mHasData:Z

    return v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 34
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0a0101

    .line 35
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/shortcuts/IconAndTitleShortcutMenuItemContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/home/launcher/shortcuts/IconAndTitleShortcutMenuItemContainer;->mIcon:Landroid/widget/ImageView;

    const v0, 0x7f0a0104

    .line 36
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/shortcuts/IconAndTitleShortcutMenuItemContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/shortcuts/IconAndTitleShortcutMenuItemContainer;->mTitle:Landroid/widget/TextView;

    .line 37
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/IconAndTitleShortcutMenuItemContainer;->mTitle:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/IconAndTitleShortcutMenuItemContainer;->mTitle:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/IconAndTitleShortcutMenuItemContainer;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 80
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/shortcuts/IconAndTitleShortcutMenuItemContainer;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x0

    .line 81
    iput-boolean v0, p0, Lcom/miui/home/launcher/shortcuts/IconAndTitleShortcutMenuItemContainer;->mHasData:Z

    return-void
.end method

.method public setIconScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/IconAndTitleShortcutMenuItemContainer;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method

.method public setTitleTextColor(I)V
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/IconAndTitleShortcutMenuItemContainer;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method
