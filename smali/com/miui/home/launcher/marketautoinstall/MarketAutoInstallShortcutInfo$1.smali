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

    .line 28
    iput-object p1, p0, Lcom/miui/home/launcher/marketautoinstall/MarketAutoInstallShortcutInfo$1;->this$0:Lcom/miui/home/launcher/marketautoinstall/MarketAutoInstallShortcutInfo;

    iput-object p2, p0, Lcom/miui/home/launcher/marketautoinstall/MarketAutoInstallShortcutInfo$1;->val$launcher:Lcom/miui/home/launcher/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 36
    iget-object p1, p0, Lcom/miui/home/launcher/marketautoinstall/MarketAutoInstallShortcutInfo$1;->val$launcher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f100234

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 1

    .line 31
    invoke-static {}, Lcom/miui/home/launcher/marketautoinstall/MarketAutoInstallRepository;->getInstance()Lcom/miui/home/launcher/marketautoinstall/MarketAutoInstallRepository;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/marketautoinstall/MarketAutoInstallRepository;->start(Ljava/lang/String;)V

    return-void
.end method
