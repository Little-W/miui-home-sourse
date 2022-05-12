.class Lcom/miui/maml/util/HideSdkDependencyUtils$1$1;
.super Landroid/content/pm/IPackageInstallObserver2$Stub;
.source "HideSdkDependencyUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/maml/util/HideSdkDependencyUtils$1;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/maml/util/HideSdkDependencyUtils$1;

.field final synthetic val$conn:Landroid/content/ServiceConnection;


# direct methods
.method constructor <init>(Lcom/miui/maml/util/HideSdkDependencyUtils$1;Landroid/content/ServiceConnection;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/miui/maml/util/HideSdkDependencyUtils$1$1;->this$0:Lcom/miui/maml/util/HideSdkDependencyUtils$1;

    iput-object p2, p0, Lcom/miui/maml/util/HideSdkDependencyUtils$1$1;->val$conn:Landroid/content/ServiceConnection;

    invoke-direct {p0}, Landroid/content/pm/IPackageInstallObserver2$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageInstalled(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 197
    iget-object p1, p0, Lcom/miui/maml/util/HideSdkDependencyUtils$1$1;->this$0:Lcom/miui/maml/util/HideSdkDependencyUtils$1;

    iget-object p1, p1, Lcom/miui/maml/util/HideSdkDependencyUtils$1;->val$context:Landroid/content/Context;

    iget-object p2, p0, Lcom/miui/maml/util/HideSdkDependencyUtils$1$1;->val$conn:Landroid/content/ServiceConnection;

    invoke-virtual {p1, p2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 198
    iget-object p1, p0, Lcom/miui/maml/util/HideSdkDependencyUtils$1$1;->this$0:Lcom/miui/maml/util/HideSdkDependencyUtils$1;

    iget-object p1, p1, Lcom/miui/maml/util/HideSdkDependencyUtils$1;->val$context:Landroid/content/Context;

    iget-object p2, p0, Lcom/miui/maml/util/HideSdkDependencyUtils$1$1;->this$0:Lcom/miui/maml/util/HideSdkDependencyUtils$1;

    iget-object p2, p2, Lcom/miui/maml/util/HideSdkDependencyUtils$1;->val$intent:Landroid/content/Intent;

    iget-object p3, p0, Lcom/miui/maml/util/HideSdkDependencyUtils$1$1;->this$0:Lcom/miui/maml/util/HideSdkDependencyUtils$1;

    iget-object p3, p3, Lcom/miui/maml/util/HideSdkDependencyUtils$1;->val$bundle:Landroid/os/Bundle;

    invoke-static {p1, p2, p3}, Lcom/miui/maml/util/Utils;->startActivityBg(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method

.method public onUserActionRequired(Landroid/content/Intent;)V
    .locals 1

    const-string p1, "MAML_Reflect"

    const-string v0, "reinstallPreloadApp2. onUserActionRequired."

    .line 203
    invoke-static {p1, v0}, Lcom/miui/maml/util/MamlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
