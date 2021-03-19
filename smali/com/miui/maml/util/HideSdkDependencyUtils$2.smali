.class final Lcom/miui/maml/util/HideSdkDependencyUtils$2;
.super Landroid/content/pm/IPackageInstallObserver$Stub;
.source "HideSdkDependencyUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/maml/util/HideSdkDependencyUtils;->PreloadedAppPolicy_installPreloadedDataApp(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Landroid/os/Bundle;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$bundle:Landroid/os/Bundle;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/miui/maml/util/HideSdkDependencyUtils$2;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/maml/util/HideSdkDependencyUtils$2;->val$intent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/miui/maml/util/HideSdkDependencyUtils$2;->val$bundle:Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/content/pm/IPackageInstallObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public packageInstalled(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 193
    iget-object p1, p0, Lcom/miui/maml/util/HideSdkDependencyUtils$2;->val$context:Landroid/content/Context;

    iget-object p2, p0, Lcom/miui/maml/util/HideSdkDependencyUtils$2;->val$intent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/miui/maml/util/HideSdkDependencyUtils$2;->val$bundle:Landroid/os/Bundle;

    invoke-static {p1, p2, v0}, Lcom/miui/maml/util/Utils;->startActivity(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method
