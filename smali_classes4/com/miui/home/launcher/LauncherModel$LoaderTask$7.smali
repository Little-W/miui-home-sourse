.class Lcom/miui/home/launcher/LauncherModel$LoaderTask$7;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/LauncherModel$LoaderTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/home/launcher/LauncherModel$LoaderTask;

.field final synthetic val$callbacks:Lcom/miui/home/launcher/LauncherModel$Callbacks;

.field final synthetic val$loadDefault:Z


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/LauncherModel$LoaderTask;Lcom/miui/home/launcher/LauncherModel$Callbacks;Z)V
    .locals 0

    .line 1664
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask$7;->this$1:Lcom/miui/home/launcher/LauncherModel$LoaderTask;

    iput-object p2, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask$7;->val$callbacks:Lcom/miui/home/launcher/LauncherModel$Callbacks;

    iput-boolean p3, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask$7;->val$loadDefault:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1666
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask$7;->this$1:Lcom/miui/home/launcher/LauncherModel$LoaderTask;

    iget-object v1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask$7;->val$callbacks:Lcom/miui/home/launcher/LauncherModel$Callbacks;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->isCallbacksValidate(Lcom/miui/home/launcher/LauncherModel$Callbacks;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1667
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask$7;->val$callbacks:Lcom/miui/home/launcher/LauncherModel$Callbacks;

    iget-object v1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask$7;->this$1:Lcom/miui/home/launcher/LauncherModel$LoaderTask;

    invoke-static {v1}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->access$2700(Lcom/miui/home/launcher/LauncherModel$LoaderTask;)Z

    move-result v1

    iget-boolean v2, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask$7;->val$loadDefault:Z

    invoke-interface {v0, v1, v2}, Lcom/miui/home/launcher/LauncherModel$Callbacks;->finishLoading(ZZ)V

    .line 1669
    iget-boolean v0, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask$7;->val$loadDefault:Z

    if-eqz v0, :cond_0

    .line 1670
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask$7;->this$1:Lcom/miui/home/launcher/LauncherModel$LoaderTask;

    invoke-static {p0}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->access$1800(Lcom/miui/home/launcher/LauncherModel$LoaderTask;)Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x1

    const-string v1, "database_ready_pref_key"

    invoke-static {p0, v1, v0}, Lcom/miui/home/launcher/common/PreferenceUtils;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method
