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

    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
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

    .line 65
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
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/IconAndTitleShortcutMenuItemContainer;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/miui/home/launcher/shortcuts/IconAndTitleShortcutMenuItemContainer;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/miui/home/launcher/shortcuts/IconAndTitleShortcutMenuItemContainer;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTotalPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private getSuitableTitle(Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;)Ljava/lang/CharSequence;
    .locals 3

    .line 56
    invoke-virtual {p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;->getLongTitle()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 57
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/shortcuts/IconAndTitleShortcutMenuItemContainer;->calculateWordsWidth(Ljava/lang/CharSequence;)F

    move-result v1

    invoke-direct {p0}, Lcom/miui/home/launcher/shortcuts/IconAndTitleShortcutMenuItemContainer;->getMenuItemTitleMaxWidth()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    return-object v0

    .line 60
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;->getShortTitle()Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic lambda$bindShortcutMenuItem$0(Lcom/miui/home/launcher/shortcuts/IconAndTitleShortcutMenuItemContainer;Landroid/view/View$OnClickListener;Landroid/view/View;)V
    .locals 0

    .line 49
    invoke-interface {p1, p2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 50
    iget-object p1, p0, Lcom/miui/home/launcher/shortcuts/IconAndTitleShortcutMenuItemContainer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/miui/home/launcher/util/UiThreadHelper;->hideKeyboardAsync(Landroid/content/Context;Landroid/os/IBinder;)V

    return-void
.end method


# virtual methods
.method public bindShortcutMenuItem(Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;)V
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/IconAndTitleShortcutMenuItemContainer;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 46
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/IconAndTitleShortcutMenuItemContainer;->mTitle:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/shortcuts/IconAndTitleShortcutMenuItemContainer;->getSuitableTitle(Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    invoke-virtual {p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;->getOnClickListener()Landroid/view/View$OnClickListener;

    move-result-object p1

    .line 48
    new-instance v0, Lcom/miui/home/launcher/shortcuts/-$$Lambda$IconAndTitleShortcutMenuItemContainer$z4cOhrWYBLo5Ojjb7eb1Dehsvx0;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/launcher/shortcuts/-$$Lambda$IconAndTitleShortcutMenuItemContainer$z4cOhrWYBLo5Ojjb7eb1Dehsvx0;-><init>(Lcom/miui/home/launcher/shortcuts/IconAndTitleShortcutMenuItemContainer;Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/shortcuts/IconAndTitleShortcutMenuItemContainer;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p1, 0x1

    .line 52
    iput-boolean p1, p0, Lcom/miui/home/launcher/shortcuts/IconAndTitleShortcutMenuItemContainer;->mHasData:Z

    return-void
.end method

.method public hasData()Z
    .locals 1

    .line 80
    iget-boolean v0, p0, Lcom/miui/home/launcher/shortcuts/IconAndTitleShortcutMenuItemContainer;->mHasData:Z

    return v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 32
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0a00ff

    .line 33
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/shortcuts/IconAndTitleShortcutMenuItemContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/home/launcher/shortcuts/IconAndTitleShortcutMenuItemContainer;->mIcon:Landroid/widget/ImageView;

    const v0, 0x7f0a0102

    .line 34
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/shortcuts/IconAndTitleShortcutMenuItemContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/shortcuts/IconAndTitleShortcutMenuItemContainer;->mTitle:Landroid/widget/TextView;

    .line 35
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

    .line 36
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/IconAndTitleShortcutMenuItemContainer;->mTitle:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/IconAndTitleShortcutMenuItemContainer;->mTitle:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/IconAndTitleShortcutMenuItemContainer;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 75
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/shortcuts/IconAndTitleShortcutMenuItemContainer;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x0

    .line 76
    iput-boolean v0, p0, Lcom/miui/home/launcher/shortcuts/IconAndTitleShortcutMenuItemContainer;->mHasData:Z

    return-void
.end method

.method public setIconScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/IconAndTitleShortcutMenuItemContainer;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method

.method public setTitleTextColor(I)V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/IconAndTitleShortcutMenuItemContainer;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method
