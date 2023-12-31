.class Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper$4;
.super Lcom/miui/msa/internal/common/aidl/RemoteMethodInvoker;
.source "InternalPreInstallAdHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper;->handleClick(Ljava/util/List;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/msa/internal/common/aidl/RemoteMethodInvoker<",
        "Ljava/lang/Void;",
        "Lcom/miui/msa/internal/preinstall/v1/IInternalPreInstallAd;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper;

.field final synthetic val$appIndex:I

.field final synthetic val$folderId:J

.field final synthetic val$infos:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper;Landroid/content/Context;Ljava/lang/Class;Ljava/util/List;IJ)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper$4;->this$0:Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper;

    iput-object p4, p0, Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper$4;->val$infos:Ljava/util/List;

    iput p5, p0, Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper$4;->val$appIndex:I

    iput-wide p6, p0, Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper$4;->val$folderId:J

    invoke-direct {p0, p2, p3}, Lcom/miui/msa/internal/common/aidl/RemoteMethodInvoker;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

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

    .line 142
    check-cast p1, Lcom/miui/msa/internal/preinstall/v1/IInternalPreInstallAd;

    invoke-virtual {p0, p1}, Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper$4;->innerInvoke(Lcom/miui/msa/internal/preinstall/v1/IInternalPreInstallAd;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public innerInvoke(Lcom/miui/msa/internal/preinstall/v1/IInternalPreInstallAd;)Ljava/lang/Void;
    .locals 4

    .line 145
    :try_start_0
    iget-object v0, p0, Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper$4;->val$infos:Ljava/util/List;

    iget v1, p0, Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper$4;->val$appIndex:I

    iget-wide v2, p0, Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper$4;->val$folderId:J

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/miui/msa/internal/preinstall/v1/IInternalPreInstallAd;->handleClick(Ljava/util/List;IJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "InternalPreInstallAdHelper"

    const-string v0, "handleViewError: "

    .line 147
    invoke-static {p1, v0, p0}, Lcom/miui/msa/internal/common/utils/MLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method
