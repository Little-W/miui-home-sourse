.class Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper$1;
.super Lcom/miui/msa/internal/common/aidl/RemoteMethodInvoker;
.source "InternalPreInstallAdHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper;->loadFolderRecommendAdInfo(Lcom/miui/msa/internal/preinstall/v1/FolderInfo;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/msa/internal/common/aidl/RemoteMethodInvoker<",
        "Ljava/util/List<",
        "Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;",
        ">;",
        "Lcom/miui/msa/internal/preinstall/v1/IInternalPreInstallAd;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper;

.field final synthetic val$folderInfo:Lcom/miui/msa/internal/preinstall/v1/FolderInfo;


# direct methods
.method constructor <init>(Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper;Landroid/content/Context;Ljava/lang/Class;Lcom/miui/msa/internal/preinstall/v1/FolderInfo;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper$1;->this$0:Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper;

    iput-object p4, p0, Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper$1;->val$folderInfo:Lcom/miui/msa/internal/preinstall/v1/FolderInfo;

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

    .line 63
    check-cast p1, Lcom/miui/msa/internal/preinstall/v1/IInternalPreInstallAd;

    invoke-virtual {p0, p1}, Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper$1;->innerInvoke(Lcom/miui/msa/internal/preinstall/v1/IInternalPreInstallAd;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public innerInvoke(Lcom/miui/msa/internal/preinstall/v1/IInternalPreInstallAd;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/msa/internal/preinstall/v1/IInternalPreInstallAd;",
            ")",
            "Ljava/util/List<",
            "Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper$1;->val$folderInfo:Lcom/miui/msa/internal/preinstall/v1/FolderInfo;

    invoke-interface {p1, v0}, Lcom/miui/msa/internal/preinstall/v1/IInternalPreInstallAd;->loadDesktopRecommendAdInfo(Lcom/miui/msa/internal/preinstall/v1/FolderInfo;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
