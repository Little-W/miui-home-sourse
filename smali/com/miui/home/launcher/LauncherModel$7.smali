.class Lcom/miui/home/launcher/LauncherModel$7;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/LauncherModel;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/LauncherModel;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/LauncherModel;Landroid/content/Intent;Landroid/content/Context;)V
    .locals 0

    .line 845
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherModel$7;->this$0:Lcom/miui/home/launcher/LauncherModel;

    iput-object p2, p0, Lcom/miui/home/launcher/LauncherModel$7;->val$intent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/miui/home/launcher/LauncherModel$7;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 847
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel$7;->val$intent:Landroid/content/Intent;

    const-string v1, "android.intent.extra.USER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    if-nez v0, :cond_0

    .line 849
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    .line 851
    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherModel$7;->this$0:Lcom/miui/home/launcher/LauncherModel;

    iget-object v2, p0, Lcom/miui/home/launcher/LauncherModel$7;->val$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/miui/home/launcher/LauncherModel$7;->val$intent:Landroid/content/Intent;

    invoke-virtual {v1, v2, v3, v0}, Lcom/miui/home/launcher/LauncherModel;->onReceiveBackground(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method
