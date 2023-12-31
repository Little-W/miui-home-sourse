.class Lcom/miui/home/recents/util/PairUtils$1;
.super Ljava/lang/Object;
.source "PairUtils.java"

# interfaces
.implements Lcom/miui/home/launcher/InstallShortcutReceiver$InstallShortcutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/recents/util/PairUtils;->addPairIconToWorkspace(Lcom/miui/home/launcher/PairShortcutInfo;Lcom/miui/home/launcher/Launcher;Landroid/graphics/Bitmap;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$group:Lcom/miui/home/launcher/PairShortcutInfo;

.field final synthetic val$isFromDock:Z

.field final synthetic val$launcher:Lcom/miui/home/launcher/Launcher;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/Launcher;ZLcom/miui/home/launcher/PairShortcutInfo;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/miui/home/recents/util/PairUtils$1;->val$launcher:Lcom/miui/home/launcher/Launcher;

    iput-boolean p2, p0, Lcom/miui/home/recents/util/PairUtils$1;->val$isFromDock:Z

    iput-object p3, p0, Lcom/miui/home/recents/util/PairUtils$1;->val$group:Lcom/miui/home/launcher/PairShortcutInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDuplicate()V
    .locals 2

    .line 148
    iget-object p0, p0, Lcom/miui/home/recents/util/PairUtils$1;->val$launcher:Lcom/miui/home/launcher/Launcher;

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1101f3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 149
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onSuccess()V
    .locals 3

    .line 154
    iget-object v0, p0, Lcom/miui/home/recents/util/PairUtils$1;->val$launcher:Lcom/miui/home/launcher/Launcher;

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1101f1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 155
    iget-boolean v0, p0, Lcom/miui/home/recents/util/PairUtils$1;->val$isFromDock:Z

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/miui/home/recents/util/PairUtils$1;->val$group:Lcom/miui/home/launcher/PairShortcutInfo;

    .line 157
    invoke-virtual {v0}, Lcom/miui/home/launcher/PairShortcutInfo;->getPairCompletePackageName()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/miui/home/recents/util/PairUtils$1;->val$group:Lcom/miui/home/launcher/PairShortcutInfo;

    .line 158
    invoke-virtual {p0}, Lcom/miui/home/launcher/PairShortcutInfo;->getAppStyle()Ljava/lang/String;

    move-result-object p0

    const-string v1, "\u6dfb\u52a0\u81f3\u684c\u9762"

    .line 156
    invoke-static {v0, v1, p0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackClickShortcutMenuItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 160
    :cond_0
    iget-object p0, p0, Lcom/miui/home/recents/util/PairUtils$1;->val$group:Lcom/miui/home/launcher/PairShortcutInfo;

    invoke-virtual {p0}, Lcom/miui/home/launcher/PairShortcutInfo;->getPairCompletePackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/home/launcher/AnalyticalDataCollectorForRecents;->sendLongClickTaskAddEvent(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
