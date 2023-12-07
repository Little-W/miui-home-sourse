.class Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelperV2$1;
.super Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker;
.source "InternalPreInstallAdHelperV2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelperV2;->loadFolderRecommendAdInfo(Lcom/miui/msa/internal/preinstall/v2/FolderInfo;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker<",
        "Ljava/util/List<",
        "Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;",
        ">;",
        "Lcom/miui/msa/internal/preinstall/v2/IInternalPreInstallAdV2;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelperV2;

.field final synthetic val$folderInfo:Lcom/miui/msa/internal/preinstall/v2/FolderInfo;


# direct methods
.method constructor <init>(Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelperV2;Landroid/content/Context;Ljava/lang/Class;Lcom/miui/msa/internal/preinstall/v2/FolderInfo;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelperV2$1;->this$0:Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelperV2;

    iput-object p4, p0, Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelperV2$1;->val$folderInfo:Lcom/miui/msa/internal/preinstall/v2/FolderInfo;

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

    .line 86
    check-cast p1, Lcom/miui/msa/internal/preinstall/v2/IInternalPreInstallAdV2;

    invoke-virtual {p0, p1}, Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelperV2$1;->innerInvoke(Lcom/miui/msa/internal/preinstall/v2/IInternalPreInstallAdV2;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public innerInvoke(Lcom/miui/msa/internal/preinstall/v2/IInternalPreInstallAdV2;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/msa/internal/preinstall/v2/IInternalPreInstallAdV2;",
            ")",
            "Ljava/util/List<",
            "Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 90
    iget-object p0, p0, Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelperV2$1;->val$folderInfo:Lcom/miui/msa/internal/preinstall/v2/FolderInfo;

    invoke-interface {p1, p0}, Lcom/miui/msa/internal/preinstall/v2/IInternalPreInstallAdV2;->loadDesktopRecommendAdInfo(Lcom/miui/msa/internal/preinstall/v2/FolderInfo;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
