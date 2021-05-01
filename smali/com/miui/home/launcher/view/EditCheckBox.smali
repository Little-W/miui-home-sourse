.class public Lcom/miui/home/launcher/view/EditCheckBox;
.super Landroid/widget/CheckBox;
.source "EditCheckBox.java"


# instance fields
.field private mIsDarkMode:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 18
    invoke-direct {p0, p1}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lcom/miui/home/launcher/view/EditCheckBox;->mIsDarkMode:Z

    .line 19
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/view/EditCheckBox;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 15
    iput-boolean p2, p0, Lcom/miui/home/launcher/view/EditCheckBox;->mIsDarkMode:Z

    .line 24
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/view/EditCheckBox;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 15
    iput-boolean p2, p0, Lcom/miui/home/launcher/view/EditCheckBox;->mIsDarkMode:Z

    .line 29
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/view/EditCheckBox;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 1

    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/view/EditCheckBox;->isDarkMode(Landroid/content/res/Configuration;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/home/launcher/view/EditCheckBox;->mIsDarkMode:Z

    .line 34
    iget-boolean v0, p0, Lcom/miui/home/launcher/view/EditCheckBox;->mIsDarkMode:Z

    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/view/EditCheckBox;->loadButtonDrawable(Landroid/content/Context;Z)V

    return-void
.end method

.method private static isDarkMode(Landroid/content/res/Configuration;)Z
    .locals 1

    .line 78
    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    const/16 v0, 0x20

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private loadButtonDrawable(Landroid/content/Context;Z)V
    .locals 2

    .line 52
    sget-boolean v0, Lcom/miui/home/launcher/common/Utilities;->IS_MIUI_10:Z

    if-eqz v0, :cond_0

    .line 53
    new-instance p2, Lcom/miui/home/launcher/view/EditCheckBoxDrawable;

    invoke-direct {p2, p1}, Lcom/miui/home/launcher/view/EditCheckBoxDrawable;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 55
    :cond_0
    new-instance v0, Landroid/view/ContextThemeWrapper;

    const v1, 0x7f1100af

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    if-eqz p2, :cond_1

    const-string p1, "btn_checkbox_dark"

    .line 57
    invoke-static {v0, p1}, Lcom/miui/home/launcher/common/Utilities;->getMiuiDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    goto :goto_0

    :cond_1
    const-string p1, "btn_checkbox_light"

    .line 59
    invoke-static {v0, p1}, Lcom/miui/home/launcher/common/Utilities;->getMiuiDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 62
    :goto_0
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/view/EditCheckBox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 39
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 40
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->supportDarkMode()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/miui/home/launcher/common/Utilities;->IS_MIUI_10:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 43
    :cond_0
    invoke-static {p1}, Lcom/miui/home/launcher/view/EditCheckBox;->isDarkMode(Landroid/content/res/Configuration;)Z

    move-result p1

    .line 44
    iget-boolean v0, p0, Lcom/miui/home/launcher/view/EditCheckBox;->mIsDarkMode:Z

    if-eq v0, p1, :cond_1

    .line 45
    iput-boolean p1, p0, Lcom/miui/home/launcher/view/EditCheckBox;->mIsDarkMode:Z

    .line 46
    invoke-virtual {p0}, Lcom/miui/home/launcher/view/EditCheckBox;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/miui/home/launcher/view/EditCheckBox;->loadButtonDrawable(Landroid/content/Context;Z)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 74
    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/view/EditCheckBox;->setChecked(ZZ)V

    return-void
.end method

.method public setChecked(ZZ)V
    .locals 1

    .line 66
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 67
    invoke-virtual {p0}, Lcom/miui/home/launcher/view/EditCheckBox;->getButtonDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/home/launcher/view/EditCheckBoxDrawable;

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {p0}, Lcom/miui/home/launcher/view/EditCheckBox;->getButtonDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/view/EditCheckBoxDrawable;

    invoke-virtual {v0, p1, p2}, Lcom/miui/home/launcher/view/EditCheckBoxDrawable;->startCheckAnimator(ZZ)V

    :cond_0
    return-void
.end method
