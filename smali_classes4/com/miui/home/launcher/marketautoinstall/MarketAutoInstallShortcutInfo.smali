.class public Lcom/miui/home/launcher/marketautoinstall/MarketAutoInstallShortcutInfo;
.super Lcom/miui/home/launcher/AppInfo;
.source "MarketAutoInstallShortcutInfo.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/miui/home/launcher/AppInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public getComponentName()Landroid/content/ComponentName;
    .locals 2

    .line 73
    invoke-virtual {p0}, Lcom/miui/home/launcher/marketautoinstall/MarketAutoInstallShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/miui/home/launcher/marketautoinstall/MarketAutoInstallShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v1, ""

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/miui/home/launcher/marketautoinstall/MarketAutoInstallShortcutInfo;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/marketautoinstall/MarketAutoInstallShortcutInfo;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 66
    iget-object p0, p0, Lcom/miui/home/launcher/marketautoinstall/MarketAutoInstallShortcutInfo;->mIntent:Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "pkgName"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public handleClick(Lcom/miui/home/launcher/Launcher;Landroid/view/View;)Z
    .locals 3

    .line 24
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/AppInfo;->handleClick(Lcom/miui/home/launcher/Launcher;Landroid/view/View;)Z

    move-result p2

    const/4 v0, 0x1

    if-nez p2, :cond_1

    .line 25
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/miui/home/launcher/util/NetWorkUtils;->isConnected(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 26
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f110381

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 p2, 0x0

    invoke-static {p1, p0, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return v0

    .line 29
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/marketautoinstall/MarketAutoInstallShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 31
    invoke-static {}, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;->getInstance()Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;

    move-result-object v1

    new-instance v2, Lcom/miui/home/launcher/marketautoinstall/MarketAutoInstallShortcutInfo$1;

    invoke-direct {v2, p0, p1}, Lcom/miui/home/launcher/marketautoinstall/MarketAutoInstallShortcutInfo$1;-><init>(Lcom/miui/home/launcher/marketautoinstall/MarketAutoInstallShortcutInfo;Lcom/miui/home/launcher/Launcher;)V

    invoke-virtual {v1, p2, v2}, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;->onGpLinkClick(Ljava/lang/String;Lcom/miui/home/launcher/marketautoinstall/MarketAutoInstallRepository$CallBack;)V

    :cond_1
    return v0
.end method

.method public onRemovedFromLauncher(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 58
    invoke-super {p0, p1}, Lcom/miui/home/launcher/AppInfo;->onRemovedFromLauncher(Lcom/miui/home/launcher/Launcher;)V

    .line 60
    invoke-static {}, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;->getInstance()Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;

    move-result-object p1

    invoke-virtual {p0}, Lcom/miui/home/launcher/marketautoinstall/MarketAutoInstallShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;->onGPLinkRemoved(Ljava/lang/String;)V

    return-void
.end method
