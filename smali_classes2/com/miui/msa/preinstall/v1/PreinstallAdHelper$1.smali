.class Lcom/miui/msa/preinstall/v1/PreinstallAdHelper$1;
.super Lcom/miui/msa/internal/common/aidl/RemoteMethodInvoker;
.source "PreinstallAdHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/msa/preinstall/v1/PreinstallAdHelper;->getPreinstallAdInfos(I)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/msa/internal/common/aidl/RemoteMethodInvoker<",
        "Ljava/util/List<",
        "Lcom/miui/msa/preinstall/v1/PreinstallAdInfo;",
        ">;",
        "Lcom/miui/msa/preinstall/v1/IPreinstallAd;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/msa/preinstall/v1/PreinstallAdHelper;

.field final synthetic val$count:I


# direct methods
.method constructor <init>(Lcom/miui/msa/preinstall/v1/PreinstallAdHelper;Landroid/content/Context;Ljava/lang/Class;I)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/miui/msa/preinstall/v1/PreinstallAdHelper$1;->this$0:Lcom/miui/msa/preinstall/v1/PreinstallAdHelper;

    iput p4, p0, Lcom/miui/msa/preinstall/v1/PreinstallAdHelper$1;->val$count:I

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

    .line 65
    check-cast p1, Lcom/miui/msa/preinstall/v1/IPreinstallAd;

    invoke-virtual {p0, p1}, Lcom/miui/msa/preinstall/v1/PreinstallAdHelper$1;->innerInvoke(Lcom/miui/msa/preinstall/v1/IPreinstallAd;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public innerInvoke(Lcom/miui/msa/preinstall/v1/IPreinstallAd;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/msa/preinstall/v1/IPreinstallAd;",
            ")",
            "Ljava/util/List<",
            "Lcom/miui/msa/preinstall/v1/PreinstallAdInfo;",
            ">;"
        }
    .end annotation

    .line 68
    :try_start_0
    iget p0, p0, Lcom/miui/msa/preinstall/v1/PreinstallAdHelper$1;->val$count:I

    invoke-interface {p1, p0}, Lcom/miui/msa/preinstall/v1/IPreinstallAd;->getPreinstallAdInfos(I)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "PreinstallAdHelper"

    const-string v0, "getPreinstallAdInfos Error: "

    .line 70
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method
