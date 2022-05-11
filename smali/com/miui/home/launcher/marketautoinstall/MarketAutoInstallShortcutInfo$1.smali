.class Lcom/miui/home/launcher/marketautoinstall/MarketAutoInstallShortcutInfo$1;
.super Ljava/lang/Object;
.source "MarketAutoInstallShortcutInfo.java"

# interfaces
.implements Lcom/miui/home/launcher/marketautoinstall/MarketAutoInstallRepository$CallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/marketautoinstall/MarketAutoInstallShortcutInfo;->handleClick(Lcom/miui/home/launcher/Launcher;Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/marketautoinstall/MarketAutoInstallShortcutInfo;

.field final synthetic val$launcher:Lcom/miui/home/launcher/Launcher;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/marketautoinstall/MarketAutoInstallShortcutInfo;Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/miui/home/launcher/marketautoinstall/MarketAutoInstallShortcutInfo$1;->this$0:Lcom/miui/home/launcher/marketautoinstall/MarketAutoInstallShortcutInfo;

    iput-object p2, p0, Lcom/miui/home/launcher/marketautoinstall/MarketAutoInstallShortcutInfo$1;->val$launcher:Lcom/miui/home/launcher/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 47
    iget-object p1, p0, Lcom/miui/home/launcher/marketautoinstall/MarketAutoInstallShortcutInfo$1;->val$launcher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f1003a9

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 2

    .line 34
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPadDevice()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/miui/home/launcher/russia/RussiaPreInstallUtils;->isRussiaRom()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 41
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/marketautoinstall/MarketAutoInstallRepository;->getInstance()Lcom/miui/home/launcher/marketautoinstall/MarketAutoInstallRepository;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/marketautoinstall/MarketAutoInstallRepository;->start(Ljava/lang/String;)V

    goto :goto_1

    .line 35
    :cond_1
    :goto_0
    invoke-static {}, Lcom/market/sdk/MarketManager;->getManager()Lcom/market/sdk/MarketManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/market/sdk/MarketManager;->getFloatCardManager()Lcom/market/sdk/FloatCardManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 37
    invoke-static {}, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;->getInstance()Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;->getDataFromDeepLink(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 38
    invoke-virtual {v0, p1}, Lcom/market/sdk/FloatCardManager;->downloadOnly(Ljava/lang/String;)Z

    :cond_2
    :goto_1
    return-void
.end method
