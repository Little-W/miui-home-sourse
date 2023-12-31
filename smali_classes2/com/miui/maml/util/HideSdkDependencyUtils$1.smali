.class Lcom/miui/maml/util/HideSdkDependencyUtils$1;
.super Ljava/lang/Object;
.source "HideSdkDependencyUtils.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/maml/util/HideSdkDependencyUtils;->PreloadedAppPolicy_installPreloadedDataApp(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Landroid/os/Bundle;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$bundle:Landroid/os/Bundle;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/miui/maml/util/HideSdkDependencyUtils$1;->val$packageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/maml/util/HideSdkDependencyUtils$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/miui/maml/util/HideSdkDependencyUtils$1;->val$intent:Landroid/content/Intent;

    iput-object p4, p0, Lcom/miui/maml/util/HideSdkDependencyUtils$1;->val$bundle:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .line 192
    invoke-static {p2}, Lmiui/content/pm/IPreloadedAppManager$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/content/pm/IPreloadedAppManager;

    move-result-object p1

    .line 194
    :try_start_0
    iget-object p2, p0, Lcom/miui/maml/util/HideSdkDependencyUtils$1;->val$packageName:Ljava/lang/String;

    new-instance v0, Lcom/miui/maml/util/HideSdkDependencyUtils$1$1;

    invoke-direct {v0, p0, p0}, Lcom/miui/maml/util/HideSdkDependencyUtils$1$1;-><init>(Lcom/miui/maml/util/HideSdkDependencyUtils$1;Landroid/content/ServiceConnection;)V

    const/4 v1, 0x1

    invoke-interface {p1, p2, v0, v1}, Lmiui/content/pm/IPreloadedAppManager;->reinstallPreloadedApp2(Ljava/lang/String;Landroid/content/pm/IPackageInstallObserver2;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 209
    iget-object p2, p0, Lcom/miui/maml/util/HideSdkDependencyUtils$1;->val$context:Landroid/content/Context;

    invoke-virtual {p2, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 210
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "reinstallPreloadApp2. "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "MAML_Reflect"

    invoke-static {p2, p0, p1}, Lcom/miui/maml/util/MamlLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    const-string p0, "MAML_Reflect"

    const-string p1, "reinstallPreloadApp2. disconnected."

    .line 216
    invoke-static {p0, p1}, Lcom/miui/maml/util/MamlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
