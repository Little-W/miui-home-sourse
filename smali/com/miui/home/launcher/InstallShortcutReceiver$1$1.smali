.class Lcom/miui/home/launcher/InstallShortcutReceiver$1$1;
.super Lcom/miui/home/launcher/common/ResultRunnable;
.source "InstallShortcutReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/InstallShortcutReceiver$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/home/launcher/common/ResultRunnable<",
        "Lcom/miui/home/launcher/ItemInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/InstallShortcutReceiver$1;

.field final synthetic val$hybridTrackStr:Ljava/lang/String;

.field final synthetic val$needSaveHybridTrackStr:Z


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/InstallShortcutReceiver$1;ZLjava/lang/String;)V
    .locals 0

    .line 233
    iput-object p1, p0, Lcom/miui/home/launcher/InstallShortcutReceiver$1$1;->this$0:Lcom/miui/home/launcher/InstallShortcutReceiver$1;

    iput-boolean p2, p0, Lcom/miui/home/launcher/InstallShortcutReceiver$1$1;->val$needSaveHybridTrackStr:Z

    iput-object p3, p0, Lcom/miui/home/launcher/InstallShortcutReceiver$1$1;->val$hybridTrackStr:Ljava/lang/String;

    invoke-direct {p0}, Lcom/miui/home/launcher/common/ResultRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 236
    invoke-virtual {p0}, Lcom/miui/home/launcher/InstallShortcutReceiver$1$1;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ItemInfo;

    if-eqz v0, :cond_0

    .line 237
    iget-boolean v1, p0, Lcom/miui/home/launcher/InstallShortcutReceiver$1$1;->val$needSaveHybridTrackStr:Z

    if-eqz v1, :cond_0

    .line 238
    iget-wide v0, v0, Lcom/miui/home/launcher/ItemInfo;->id:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/InstallShortcutReceiver$1$1;->val$hybridTrackStr:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/home/launcher/hybrid/HybridController;->saveHybridTrackStr(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
