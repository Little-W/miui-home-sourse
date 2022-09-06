.class Lcom/miui/home/launcher/LauncherModel$3;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/LauncherModel;->applyBatch(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$authority:Ljava/lang/String;

.field final synthetic val$cr:Landroid/content/ContentResolver;

.field final synthetic val$operations:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0

    .line 567
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherModel$3;->val$cr:Landroid/content/ContentResolver;

    iput-object p2, p0, Lcom/miui/home/launcher/LauncherModel$3;->val$authority:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/home/launcher/LauncherModel$3;->val$operations:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 570
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel$3;->val$cr:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/miui/home/launcher/LauncherModel$3;->val$authority:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/home/launcher/LauncherModel$3;->val$operations:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 574
    :catch_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "applyBatch failed with OperationApplicationException."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 572
    :catch_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "applyBatch failed with RemoteException."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
