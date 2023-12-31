.class Lcom/miui/home/launcher/LauncherModel$LoaderTask$9;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/LauncherModel$LoaderTask;->loadAndBindWorkspace(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/home/launcher/LauncherModel$LoaderTask;

.field final synthetic val$callbacks:Lcom/miui/home/launcher/LauncherModel$Callbacks;

.field final synthetic val$t:J


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/LauncherModel$LoaderTask;Lcom/miui/home/launcher/LauncherModel$Callbacks;J)V
    .locals 0

    .line 2337
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask$9;->this$1:Lcom/miui/home/launcher/LauncherModel$LoaderTask;

    iput-object p2, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask$9;->val$callbacks:Lcom/miui/home/launcher/LauncherModel$Callbacks;

    iput-wide p3, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask$9;->val$t:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 2339
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask$9;->this$1:Lcom/miui/home/launcher/LauncherModel$LoaderTask;

    iget-object v1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask$9;->val$callbacks:Lcom/miui/home/launcher/LauncherModel$Callbacks;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->isCallbacksValidate(Lcom/miui/home/launcher/LauncherModel$Callbacks;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2340
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask$9;->val$callbacks:Lcom/miui/home/launcher/LauncherModel$Callbacks;

    invoke-interface {v0}, Lcom/miui/home/launcher/LauncherModel$Callbacks;->finishBindingSavedItems()V

    .line 2342
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bind workspace in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2343
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask$9;->val$t:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "ms"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Launcher.Model"

    .line 2342
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
