.class Lcom/miui/home/launcher/progress/ProgressShortcutInfo$2;
.super Lcom/miui/home/launcher/common/ResultRunnable;
.source "ProgressShortcutInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->onProgressFinished(Lcom/miui/home/launcher/Launcher;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/home/launcher/common/ResultRunnable<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/progress/ProgressShortcutInfo;

.field final synthetic val$launcher:Lcom/miui/home/launcher/Launcher;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/progress/ProgressShortcutInfo;Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 235
    iput-object p1, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo$2;->this$0:Lcom/miui/home/launcher/progress/ProgressShortcutInfo;

    iput-object p2, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo$2;->val$launcher:Lcom/miui/home/launcher/Launcher;

    invoke-direct {p0}, Lcom/miui/home/launcher/common/ResultRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 238
    invoke-virtual {p0}, Lcom/miui/home/launcher/progress/ProgressShortcutInfo$2;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo$2;->val$launcher:Lcom/miui/home/launcher/Launcher;

    iget-object v1, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo$2;->this$0:Lcom/miui/home/launcher/progress/ProgressShortcutInfo;

    invoke-static {v0, v1}, Lcom/miui/home/launcher/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)V

    .line 240
    iget-object v0, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo$2;->this$0:Lcom/miui/home/launcher/progress/ProgressShortcutInfo;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mAppProgressServer:Ljava/lang/String;

    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "remove icon on progress finished for app "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo$2;->this$0:Lcom/miui/home/launcher/progress/ProgressShortcutInfo;

    invoke-virtual {v1}, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProgressShortcutInfo"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iget-object v0, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo$2;->val$launcher:Lcom/miui/home/launcher/Launcher;

    iget-object p0, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo$2;->this$0:Lcom/miui/home/launcher/progress/ProgressShortcutInfo;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/Launcher;->removeProgressIcon(Lcom/miui/home/launcher/progress/ProgressShortcutInfo;)V

    :cond_0
    return-void
.end method
