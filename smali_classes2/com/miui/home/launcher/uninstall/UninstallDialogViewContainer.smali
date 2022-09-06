.class public Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;
.super Landroid/widget/LinearLayout;
.source "UninstallDialogViewContainer.java"


# instance fields
.field private mBindedShortcutInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDescription:Landroid/widget/TextView;

.field private mIconContainer:Lcom/miui/home/launcher/uninstall/UninstallIconsContainer;

.field private mIsContainUninstall:Z

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    iput-object p1, p0, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;)Lcom/miui/home/launcher/uninstall/UninstallIconsContainer;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;->mIconContainer:Lcom/miui/home/launcher/uninstall/UninstallIconsContainer;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;Lcom/miui/home/launcher/ItemIcon;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;->addIcon(Lcom/miui/home/launcher/ItemIcon;)V

    return-void
.end method

.method private addIcon(Lcom/miui/home/launcher/ItemIcon;)V
    .locals 1

    .line 134
    invoke-virtual {p1}, Lcom/miui/home/launcher/ItemIcon;->onlyShowIconWhenDrawChild()V

    .line 135
    iget-object v0, p0, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;->mIconContainer:Lcom/miui/home/launcher/uninstall/UninstallIconsContainer;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/uninstall/UninstallIconsContainer;->addView(Landroid/view/View;)V

    return-void
.end method

.method private containRelativeXSpace()Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 120
    :goto_0
    iget-object v2, p0, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;->mIconContainer:Lcom/miui/home/launcher/uninstall/UninstallIconsContainer;

    invoke-virtual {v2}, Lcom/miui/home/launcher/uninstall/UninstallIconsContainer;->getScreenCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 121
    iget-object v2, p0, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;->mIconContainer:Lcom/miui/home/launcher/uninstall/UninstallIconsContainer;

    invoke-virtual {v2, v1}, Lcom/miui/home/launcher/uninstall/UninstallIconsContainer;->getScreen(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/ItemIcon;

    .line 122
    invoke-virtual {v2}, Lcom/miui/home/launcher/ItemIcon;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v3, :cond_0

    .line 123
    invoke-virtual {v2}, Lcom/miui/home/launcher/ItemIcon;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/ShortcutInfo;

    .line 124
    invoke-virtual {v2}, Lcom/miui/home/launcher/ShortcutInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/launcher/utils/LauncherUtils;->isXSpaceUser(Landroid/os/UserHandle;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;->mContext:Landroid/content/Context;

    .line 125
    invoke-virtual {v2}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/miui/launcher/utils/LauncherUtils;->hasRelativeXSpaceApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private setTitle()V
    .locals 9

    .line 69
    iget-object v0, p0, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;->mBindedShortcutInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const v1, 0x7f1104c1

    const v2, 0x7f1104bd

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-le v0, v4, :cond_3

    .line 71
    iget-boolean v5, p0, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;->mIsContainUninstall:Z

    if-nez v5, :cond_0

    .line 72
    iget-object v5, p0, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0f0016

    new-array v4, v4, [Ljava/lang/Object;

    .line 73
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v3

    invoke-virtual {v6, v7, v0, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 72
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 75
    :cond_0
    iget-object v5, p0, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0f0018

    new-array v4, v4, [Ljava/lang/Object;

    .line 76
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v3

    invoke-virtual {v6, v7, v0, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 75
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    :goto_0
    iget-boolean v0, p0, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;->mIsContainUninstall:Z

    if-nez v0, :cond_1

    .line 79
    iget-object v0, p0, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;->mDescription:Landroid/widget/TextView;

    const v1, 0x7f1103fd

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    .line 80
    :cond_1
    invoke-direct {p0}, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;->containRelativeXSpace()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 81
    iget-object v0, p0, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;->mDescription:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    .line 83
    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;->mDescription:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    :cond_3
    if-ne v0, v4, :cond_8

    .line 86
    iget-object v0, p0, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;->mBindedShortcutInfos:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    .line 87
    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutInfo;->getThirdApplicationConfig()Lcom/miui/home/launcher/ThirdApplicationConfig;

    move-result-object v5

    const/4 v6, 0x0

    .line 89
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/miui/home/launcher/uninstall/UninstallController;->isSecondConfirmationDialog(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/Launcher;)Z

    move-result v7

    if-eqz v7, :cond_4

    if-eqz v5, :cond_4

    .line 90
    invoke-virtual {v5, v0}, Lcom/miui/home/launcher/ThirdApplicationConfig;->getDeleteTip(Lcom/miui/home/launcher/ShortcutInfo;)Landroid/util/Pair;

    move-result-object v6

    :cond_4
    if-eqz v6, :cond_5

    .line 93
    iget-object v0, p0, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;->mTitle:Landroid/widget/TextView;

    iget-object v1, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget-object v0, p0, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;->mDescription:Landroid/widget/TextView;

    iget-object v1, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v0, p0, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;->mIconContainer:Lcom/miui/home/launcher/uninstall/UninstallIconsContainer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/uninstall/UninstallIconsContainer;->setVisibility(I)V

    goto :goto_1

    .line 97
    :cond_5
    iget-object v5, p0, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Lcom/miui/home/launcher/ShortcutInfo;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 98
    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v6

    invoke-static {v6}, Lcom/miui/launcher/utils/LauncherUtils;->isXSpaceUser(Landroid/os/UserHandle;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 99
    iget-object v0, p0, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;->mTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;->mContext:Landroid/content/Context;

    .line 100
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1104c3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v5, v2, v3

    .line 99
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget-object v0, p0, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;->mDescription:Landroid/widget/TextView;

    const v1, 0x7f1104c2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 104
    :cond_6
    iget-object v6, p0, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;->mTitle:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;->mContext:Landroid/content/Context;

    const v8, 0x7f1104be

    .line 105
    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v5, v4, v3

    .line 104
    invoke-static {v7, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v3, p0, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/miui/launcher/utils/LauncherUtils;->hasRelativeXSpaceApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 109
    iget-object v0, p0, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;->mDescription:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 111
    :cond_7
    iget-object v0, p0, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;->mDescription:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    :cond_8
    :goto_1
    return-void
.end method


# virtual methods
.method public bindShortcut(Landroid/content/Context;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    .line 49
    iput-object p2, p0, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;->mBindedShortcutInfos:Ljava/util/List;

    .line 51
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    .line 52
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/Application;->getIconCache()Lcom/miui/home/launcher/IconCache;

    move-result-object v1

    .line 53
    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutInfo;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    new-instance v3, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer$1;

    invoke-direct {v3, p0, p1, v0}, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer$1;-><init>(Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;Landroid/content/Context;Lcom/miui/home/launcher/ShortcutInfo;)V

    .line 52
    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/miui/home/launcher/ShortcutInfo;->getIconAsync(Landroid/content/Context;Lcom/miui/home/launcher/IconCache;Landroid/graphics/drawable/Drawable;Ljava/util/function/Consumer;)V

    goto :goto_0

    .line 65
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;->setTitle()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 42
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0a0389

    .line 43
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;->mTitle:Landroid/widget/TextView;

    const v0, 0x7f0a00fc

    .line 44
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;->mDescription:Landroid/widget/TextView;

    const v0, 0x7f0a03c1

    .line 45
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/uninstall/UninstallIconsContainer;

    iput-object v0, p0, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;->mIconContainer:Lcom/miui/home/launcher/uninstall/UninstallIconsContainer;

    return-void
.end method

.method public setIsContainUninstall(Z)V
    .locals 0

    .line 139
    iput-boolean p1, p0, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;->mIsContainUninstall:Z

    return-void
.end method
