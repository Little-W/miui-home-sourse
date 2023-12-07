.class Lcom/miui/home/launcher/Launcher$84;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/Launcher;->startAndBindServiceIfNeed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/Launcher;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 9378
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$84;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 9381
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$84;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 9384
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.systemui.fsgesture.FsGestureService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.systemui"

    .line 9385
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 9386
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher$84;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v1}, Lcom/miui/home/launcher/Launcher;->access$10000(Lcom/miui/home/launcher/Launcher;)Landroid/content/ServiceConnection;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Lcom/miui/home/launcher/Launcher;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    invoke-static {v1, v0}, Lcom/miui/home/launcher/Launcher;->access$9902(Lcom/miui/home/launcher/Launcher;Z)Z

    .line 9387
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "is service connected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/miui/home/launcher/Launcher$84;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {p0}, Lcom/miui/home/launcher/Launcher;->access$9900(Lcom/miui/home/launcher/Launcher;)Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Launcher"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
