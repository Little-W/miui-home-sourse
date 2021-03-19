.class public Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$DeleteShortcutMenuItem;
.super Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem;
.source "SystemShortcutMenuItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeleteShortcutMenuItem"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 209
    invoke-direct {p0}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem;-><init>()V

    .line 210
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const v1, 0x7f10025d

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$DeleteShortcutMenuItem;->setShortTitle(Ljava/lang/CharSequence;)V

    .line 211
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const v1, 0x7f080242

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Application;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$DeleteShortcutMenuItem;->setIconDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static synthetic lambda$getOnClickListener$0(Landroid/view/View;)V
    .locals 2

    .line 224
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 227
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getShortcutMenuLayer()Lcom/miui/home/launcher/ShortcutMenuLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutMenuLayer;->getBindedItemInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 230
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->hideShortcutMenuWithoutAnim()V

    .line 231
    instance-of v1, v0, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v1, :cond_2

    .line 232
    move-object v1, v0

    check-cast v1, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/miui/home/launcher/uninstall/UninstallController;->deleteWithBoomAnim(Lcom/miui/home/launcher/Launcher;Ljava/util/List;)V

    goto :goto_0

    .line 234
    :cond_2
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getUninstallController()Lcom/miui/home/launcher/uninstall/UninstallController;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/uninstall/UninstallController;->deleteItem(Lcom/miui/home/launcher/ItemInfo;)V

    :goto_0
    const-string p0, "remove"

    .line 236
    invoke-static {v0, p0}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem;->access$000(Lcom/miui/home/launcher/ItemInfo;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getOnClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .line 223
    sget-object v0, Lcom/miui/home/launcher/shortcuts/-$$Lambda$SystemShortcutMenuItem$DeleteShortcutMenuItem$qWNkpQCZnCEfueDwODVoFg4x8pE;->INSTANCE:Lcom/miui/home/launcher/shortcuts/-$$Lambda$SystemShortcutMenuItem$DeleteShortcutMenuItem$qWNkpQCZnCEfueDwODVoFg4x8pE;

    return-object v0
.end method

.method public isValid(Lcom/miui/home/launcher/ItemInfo;)Z
    .locals 2

    .line 216
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    .line 217
    invoke-static {p1, v0}, Lcom/miui/home/launcher/uninstall/UninstallController;->isUninstallValid(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/Launcher;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 218
    invoke-static {p1, v0}, Lcom/miui/home/launcher/uninstall/UninstallController;->isDeleteValid(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/Launcher;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
