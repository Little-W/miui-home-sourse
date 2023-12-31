.class Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper$3;
.super Lcom/miui/msa/internal/common/aidl/RemoteMethodInvoker;
.source "InternalPreInstallAdHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper;->handleView(Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;I)V
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

.field final synthetic val$info:Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper;Landroid/content/Context;Ljava/lang/Class;Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;I)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper$3;->this$0:Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper;

    iput-object p4, p0, Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper$3;->val$info:Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;

    iput p5, p0, Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper$3;->val$position:I

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

    .line 123
    check-cast p1, Lcom/miui/msa/internal/preinstall/v1/IInternalPreInstallAd;

    invoke-virtual {p0, p1}, Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper$3;->innerInvoke(Lcom/miui/msa/internal/preinstall/v1/IInternalPreInstallAd;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public innerInvoke(Lcom/miui/msa/internal/preinstall/v1/IInternalPreInstallAd;)Ljava/lang/Void;
    .locals 1

    .line 126
    :try_start_0
    iget-object v0, p0, Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper$3;->val$info:Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;

    iget p0, p0, Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper$3;->val$position:I

    invoke-interface {p1, v0, p0}, Lcom/miui/msa/internal/preinstall/v1/IInternalPreInstallAd;->handleView(Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "InternalPreInstallAdHelper"

    const-string v0, "handleViewError: "

    .line 128
    invoke-static {p1, v0, p0}, Lcom/miui/msa/internal/common/utils/MLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method
