.class Lcom/miui/msa/preinstall/v1/PreinstallAdHelper$2;
.super Lcom/miui/msa/internal/common/aidl/RemoteMethodInvoker;
.source "PreinstallAdHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/msa/preinstall/v1/PreinstallAdHelper;->getPreinstallAdInfosByTagId(ILjava/lang/String;)Ljava/util/List;
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

.field final synthetic val$tagId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/msa/preinstall/v1/PreinstallAdHelper;Landroid/content/Context;Ljava/lang/Class;ILjava/lang/String;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/miui/msa/preinstall/v1/PreinstallAdHelper$2;->this$0:Lcom/miui/msa/preinstall/v1/PreinstallAdHelper;

    iput p4, p0, Lcom/miui/msa/preinstall/v1/PreinstallAdHelper$2;->val$count:I

    iput-object p5, p0, Lcom/miui/msa/preinstall/v1/PreinstallAdHelper$2;->val$tagId:Ljava/lang/String;

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

    .line 84
    check-cast p1, Lcom/miui/msa/preinstall/v1/IPreinstallAd;

    invoke-virtual {p0, p1}, Lcom/miui/msa/preinstall/v1/PreinstallAdHelper$2;->innerInvoke(Lcom/miui/msa/preinstall/v1/IPreinstallAd;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public innerInvoke(Lcom/miui/msa/preinstall/v1/IPreinstallAd;)Ljava/util/List;
    .locals 2
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

    .line 87
    :try_start_0
    iget v0, p0, Lcom/miui/msa/preinstall/v1/PreinstallAdHelper$2;->val$count:I

    iget-object v1, p0, Lcom/miui/msa/preinstall/v1/PreinstallAdHelper$2;->val$tagId:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/miui/msa/preinstall/v1/IPreinstallAd;->getPreinstallAdInfosByTagId(ILjava/lang/String;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string v0, "PreinstallAdHelper"

    const-string v1, "getPreinstallAdInfosError: "

    .line 89
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    return-object p1
.end method
