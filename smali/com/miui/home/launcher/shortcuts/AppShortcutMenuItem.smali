.class public Lcom/miui/home/launcher/shortcuts/AppShortcutMenuItem;
.super Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;
.source "AppShortcutMenuItem.java"


# instance fields
.field private mId:Ljava/lang/String;

.field private mOrder:I


# direct methods
.method public constructor <init>(Lcom/miui/launcher/common/ShortcutInfoCompat;)V
    .locals 1

    .line 14
    invoke-direct {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/miui/home/launcher/shortcuts/AppShortcutMenuItem;->mOrder:I

    .line 15
    invoke-virtual {p1}, Lcom/miui/launcher/common/ShortcutInfoCompat;->getShortLabel()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/shortcuts/AppShortcutMenuItem;->setShortTitle(Ljava/lang/CharSequence;)V

    .line 16
    invoke-virtual {p1}, Lcom/miui/launcher/common/ShortcutInfoCompat;->getLongLabel()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/shortcuts/AppShortcutMenuItem;->setLongTitle(Ljava/lang/CharSequence;)V

    .line 17
    invoke-virtual {p1}, Lcom/miui/launcher/common/ShortcutInfoCompat;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/shortcuts/AppShortcutMenuItem;->setUserHandle(Landroid/os/UserHandle;)V

    .line 18
    invoke-virtual {p1}, Lcom/miui/launcher/common/ShortcutInfoCompat;->getActivity()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/shortcuts/AppShortcutMenuItem;->setComponentName(Landroid/content/ComponentName;)V

    .line 19
    invoke-virtual {p1}, Lcom/miui/launcher/common/ShortcutInfoCompat;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/shortcuts/AppShortcutMenuItem;->setId(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$getOnClickListener$407(Lcom/miui/home/launcher/shortcuts/AppShortcutMenuItem;Landroid/view/View;)V
    .locals 3

    const-string v0, "ShortcutMenu"

    .line 41
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "click shortcut menu, pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/AppShortcutMenuItem;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", tagId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/AppShortcutMenuItem;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", title="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/AppShortcutMenuItem;->getShortTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", order="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/AppShortcutMenuItem;->getOrder()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 41
    invoke-static {v0, v1}, Lcom/miui/home/launcher/MiuiHomeLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/AppShortcutMenuItem;->getPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/AppShortcutMenuItem;->getOrder()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackClickShortcutMenuItem(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-static {}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;->getInstance()Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;->startShortcut(Lcom/miui/home/launcher/shortcuts/AppShortcutMenuItem;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/AppShortcutMenuItem;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getOnClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .line 40
    new-instance v0, Lcom/miui/home/launcher/shortcuts/-$$Lambda$AppShortcutMenuItem$hcLDYFiWHTPuOjP-MAooZDYXhXA;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/shortcuts/-$$Lambda$AppShortcutMenuItem$hcLDYFiWHTPuOjP-MAooZDYXhXA;-><init>(Lcom/miui/home/launcher/shortcuts/AppShortcutMenuItem;)V

    return-object v0
.end method

.method public getOrder()I
    .locals 1

    .line 35
    iget v0, p0, Lcom/miui/home/launcher/shortcuts/AppShortcutMenuItem;->mOrder:I

    return v0
.end method

.method public isValid()Z
    .locals 1

    .line 52
    invoke-super {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/AppShortcutMenuItem;->mId:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/miui/home/launcher/shortcuts/AppShortcutMenuItem;->mId:Ljava/lang/String;

    return-void
.end method

.method public setOrder(I)V
    .locals 0

    .line 31
    iput p1, p0, Lcom/miui/home/launcher/shortcuts/AppShortcutMenuItem;->mOrder:I

    return-void
.end method
