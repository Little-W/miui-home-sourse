.class Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelperV2$5;
.super Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker;
.source "InternalPreInstallAdHelperV2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelperV2;->handleDislike(Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker<",
        "Ljava/lang/Void;",
        "Lcom/miui/msa/internal/preinstall/v2/IInternalPreInstallAdV2;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelperV2;

.field final synthetic val$info:Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelperV2;Landroid/content/Context;Ljava/lang/Class;Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;I)V
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelperV2$5;->this$0:Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelperV2;

    iput-object p4, p0, Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelperV2$5;->val$info:Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;

    iput p5, p0, Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelperV2$5;->val$position:I

    invoke-direct {p0, p2, p3}, Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic innerInvoke(Landroid/os/IInterface;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 186
    check-cast p1, Lcom/miui/msa/internal/preinstall/v2/IInternalPreInstallAdV2;

    invoke-virtual {p0, p1}, Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelperV2$5;->innerInvoke(Lcom/miui/msa/internal/preinstall/v2/IInternalPreInstallAdV2;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public innerInvoke(Lcom/miui/msa/internal/preinstall/v2/IInternalPreInstallAdV2;)Ljava/lang/Void;
    .locals 2

    .line 189
    :try_start_0
    iget-object v0, p0, Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelperV2$5;->val$info:Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;

    iget v1, p0, Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelperV2$5;->val$position:I

    invoke-interface {p1, v0, v1}, Lcom/miui/msa/internal/preinstall/v2/IInternalPreInstallAdV2;->handleDislike(Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "InternalPreInstallAdHelperV2"

    const-string v1, "handleViewError: "

    .line 191
    invoke-static {v0, v1, p1}, Lcom/miui/msa/internal/preinstall/v2/utils/MLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
