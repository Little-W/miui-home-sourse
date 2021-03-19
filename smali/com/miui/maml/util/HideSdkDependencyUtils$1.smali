.class final Lcom/miui/maml/util/HideSdkDependencyUtils$1;
.super Landroid/content/pm/IPackageInstallObserver2$Stub;
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

    .line 178
    iput-object p1, p0, Lcom/miui/maml/util/HideSdkDependencyUtils$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/maml/util/HideSdkDependencyUtils$1;->val$intent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/miui/maml/util/HideSdkDependencyUtils$1;->val$bundle:Landroid/os/Bundle;

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

    .line 181
    iget-object p1, p0, Lcom/miui/maml/util/HideSdkDependencyUtils$1;->val$context:Landroid/content/Context;

    iget-object p2, p0, Lcom/miui/maml/util/HideSdkDependencyUtils$1;->val$intent:Landroid/content/Intent;

    iget-object p3, p0, Lcom/miui/maml/util/HideSdkDependencyUtils$1;->val$bundle:Landroid/os/Bundle;

    invoke-static {p1, p2, p3}, Lcom/miui/maml/util/Utils;->startActivity(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method

.method public onUserActionRequired(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method
