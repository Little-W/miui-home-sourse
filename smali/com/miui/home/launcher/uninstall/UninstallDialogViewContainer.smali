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

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    iput-object p1, p0, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;)Lcom/miui/home/launcher/uninstall/UninstallIconsContainer;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;->mIconContainer:Lcom/miui/home/launcher/uninstall/UninstallIconsContainer;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;Lcom/miui/home/launcher/ItemIcon;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;->addIcon(Lcom/miui/home/launcher/ItemIcon;)V

    return-void
.end method

.method private addIcon(Lcom/miui/home/launcher/ItemIcon;)V
    .locals 1

    .line 112
    invoke-virtual {p1}, Lcom/miui/home/launcher/ItemIcon;->onlyShowIconWhenDrawChild()V

    .line 113
    iget-object v0, p0, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;->mIconContainer:Lcom/miui/home/launcher/uninstall/UninstallIconsContainer;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/uninstall/UninstallIconsContainer;->addView(Landroid/view/View;)V

    return-void
.end method

.method private containRelativeXSpace()Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 98
    :goto_0
    iget-object v2, p0, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;->mIconContainer:Lcom/miui/home/launcher/uninstall/UninstallIconsContainer;

    invoke-virtual {v2}, Lcom/miui/home/launcher/uninstall/UninstallIconsContainer;->getScreenCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 99
    iget-object v2, p0, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;->mIconContainer:Lcom/miui/home/launcher/uninstall/UninstallIconsContainer;

    invoke-virtual {v2, v1}, Lcom/miui/home/launcher/uninstall/UninstallIconsContainer;->getScreen(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/ItemIcon;

    .line 100
    invoke-virtual {v2}, Lcom/miui/home/launcher/ItemIcon;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v3, :cond_0

    .line 101
    invoke-virtual {v2}, Lcom/miui/home/launcher/ItemIcon;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/ShortcutInfo;

    .line 102
    invoke-virtual {v2}, Lcom/miui/home/launcher/ShortcutInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/launcher/utils/LauncherUtils;->isXSpaceUser(Landroid/os/UserHandle;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;->mContext:Landroid/content/Context;

    .line 103
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

    .line 65
    iget-object v0, p0, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;->mBindedShortcutInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const v1, 0x7f100265

    const v2, 0x7f100261

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-le v0, v4, :cond_1

    .line 68
    iget-object v5, p0, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0e0005

    new-array v4, v4, [Ljava/lang/Object;

    .line 69
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v3

    invoke-virtual {v6, v7, v0, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 68
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    invoke-direct {p0}, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;->containRelativeXSpace()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;->mDescription:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;->mDescription:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_1
    if-ne v0, v4, :cond_4

    .line 76
    iget-object v0, p0, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;->mBindedShortcutInfos:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    .line 77
    iget-object v5, p0, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Lcom/miui/home/launcher/ShortcutInfo;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 78
    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v6

    invoke-static {v6}, Lcom/miui/launcher/utils/LauncherUtils;->isXSpaceUser(Landroid/os/UserHandle;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 79
    iget-object v0, p0, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;->mTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;->mContext:Landroid/content/Context;

    .line 80
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100267

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v5, v2, v3

    .line 79
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-object v0, p0, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;->mDescription:Landroid/widget/TextView;

    const v1, 0x7f100266

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 84
    :cond_2
    iget-object v6, p0, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;->mTitle:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;->mContext:Landroid/content/Context;

    const v8, 0x7f100262

    .line 85
    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v5, v4, v3

    .line 84
    invoke-static {v7, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v3, p0, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/miui/launcher/utils/LauncherUtils;->hasRelativeXSpaceApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 89
    iget-object v0, p0, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;->mDescription:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 91
    :cond_3
    iget-object v0, p0, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;->mDescription:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public bindShortcut(Lcom/miui/home/launcher/Launcher;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/home/launcher/Launcher;",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    .line 46
    iput-object p2, p0, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;->mBindedShortcutInfos:Ljava/util/List;

    .line 48
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    .line 49
    invoke-static {}, Lcom/miui/home/launcher/LauncherApplication;->getIconCache()Lcom/miui/home/launcher/IconCache;

    move-result-object v1

    .line 50
    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutInfo;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    new-instance v3, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer$1;

    invoke-direct {v3, p0, p1, v0}, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer$1;-><init>(Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ShortcutInfo;)V

    .line 49
    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/miui/home/launcher/ShortcutInfo;->getIconAsync(Landroid/content/Context;Lcom/miui/home/launcher/IconCache;Landroid/graphics/drawable/Drawable;Ljava8/util/function/Consumer;)V

    goto :goto_0

    .line 61
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;->setTitle()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 39
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0a01cd

    .line 40
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;->mTitle:Landroid/widget/TextView;

    const v0, 0x7f0a008f

    .line 41
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;->mDescription:Landroid/widget/TextView;

    const v0, 0x7f0a01e6

    .line 42
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/uninstall/UninstallIconsContainer;

    iput-object v0, p0, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;->mIconContainer:Lcom/miui/home/launcher/uninstall/UninstallIconsContainer;

    return-void
.end method
