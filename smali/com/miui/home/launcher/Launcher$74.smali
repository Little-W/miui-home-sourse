.class Lcom/miui/home/launcher/Launcher$74;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/Launcher;->addPreinstallAppToWorkspace(Lcom/miui/home/launcher/RemoteShortcutInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/Launcher;

.field final synthetic val$info:Lcom/miui/home/launcher/RemoteShortcutInfo;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/RemoteShortcutInfo;)V
    .locals 0

    .line 7628
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$74;->this$0:Lcom/miui/home/launcher/Launcher;

    iput-object p2, p0, Lcom/miui/home/launcher/Launcher$74;->val$info:Lcom/miui/home/launcher/RemoteShortcutInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 7631
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$74;->val$info:Lcom/miui/home/launcher/RemoteShortcutInfo;

    const-wide/16 v1, -0x64

    iput-wide v1, v0, Lcom/miui/home/launcher/RemoteShortcutInfo;->container:J

    .line 7632
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher$74;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v1, v0}, Lcom/miui/home/launcher/Launcher;->access$9600(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/RemoteShortcutInfo;)Lcom/miui/home/launcher/progress/ProgressShortcutInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 7634
    iget-object v2, p0, Lcom/miui/home/launcher/Launcher$74;->this$0:Lcom/miui/home/launcher/Launcher;

    iget-wide v4, v3, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->screenId:J

    iget-wide v6, v3, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->container:J

    iget v8, v3, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->cellX:I

    iget v9, v3, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->cellY:I

    const/4 v10, 0x0

    invoke-virtual/range {v2 .. v10}, Lcom/miui/home/launcher/Launcher;->addItemToWorkspace(Lcom/miui/home/launcher/ItemInfo;JJIILjava/lang/Runnable;)V

    .line 7636
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$74;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$500(Lcom/miui/home/launcher/Launcher;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/Launcher$74$1;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/Launcher$74$1;-><init>(Lcom/miui/home/launcher/Launcher$74;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
