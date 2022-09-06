.class Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$1;
.super Ljava/lang/Object;
.source "SystemShortcutMenuItem.java"

# interfaces
.implements Lcom/miui/home/launcher/InstallShortcutReceiver$InstallShortcutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem;->addPairIconToWorkspace(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/Launcher;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$info:Lcom/miui/home/launcher/ItemInfo;

.field final synthetic val$launcher:Lcom/miui/home/launcher/Launcher;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ItemInfo;)V
    .locals 0

    .line 256
    iput-object p1, p0, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$1;->val$launcher:Lcom/miui/home/launcher/Launcher;

    iput-object p2, p0, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$1;->val$info:Lcom/miui/home/launcher/ItemInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDuplicate()V
    .locals 3

    .line 259
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$1;->val$launcher:Lcom/miui/home/launcher/Launcher;

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1101f5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onSuccess()V
    .locals 3

    .line 264
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$1;->val$info:Lcom/miui/home/launcher/ItemInfo;

    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    .line 266
    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutInfo;->getPairCompletePackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u6dfb\u52a0\u81f3\u684c\u9762"

    .line 267
    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutInfo;->getAppStyle()Ljava/lang/String;

    move-result-object v0

    .line 265
    invoke-static {v1, v2, v0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackClickShortcutMenuItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
