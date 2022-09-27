.class Lcom/miui/msa/preinstall/v1/PreinstallAdHelper$5;
.super Lcom/miui/msa/internal/common/aidl/RemoteMethodInvoker;
.source "PreinstallAdHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/msa/preinstall/v1/PreinstallAdHelper;->handleDislike(Lcom/miui/msa/preinstall/v1/PreinstallAdInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/msa/internal/common/aidl/RemoteMethodInvoker<",
        "Ljava/lang/Void;",
        "Lcom/miui/msa/preinstall/v1/IPreinstallAd;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/msa/preinstall/v1/PreinstallAdHelper;

.field final synthetic val$info:Lcom/miui/msa/preinstall/v1/PreinstallAdInfo;


# direct methods
.method constructor <init>(Lcom/miui/msa/preinstall/v1/PreinstallAdHelper;Landroid/content/Context;Ljava/lang/Class;Lcom/miui/msa/preinstall/v1/PreinstallAdInfo;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/miui/msa/preinstall/v1/PreinstallAdHelper$5;->this$0:Lcom/miui/msa/preinstall/v1/PreinstallAdHelper;

    iput-object p4, p0, Lcom/miui/msa/preinstall/v1/PreinstallAdHelper$5;->val$info:Lcom/miui/msa/preinstall/v1/PreinstallAdInfo;

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

    .line 139
    check-cast p1, Lcom/miui/msa/preinstall/v1/IPreinstallAd;

    invoke-virtual {p0, p1}, Lcom/miui/msa/preinstall/v1/PreinstallAdHelper$5;->innerInvoke(Lcom/miui/msa/preinstall/v1/IPreinstallAd;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public innerInvoke(Lcom/miui/msa/preinstall/v1/IPreinstallAd;)Ljava/lang/Void;
    .locals 2

    .line 142
    :try_start_0
    iget-object v0, p0, Lcom/miui/msa/preinstall/v1/PreinstallAdHelper$5;->val$info:Lcom/miui/msa/preinstall/v1/PreinstallAdInfo;

    invoke-interface {p1, v0}, Lcom/miui/msa/preinstall/v1/IPreinstallAd;->handleDislike(Lcom/miui/msa/preinstall/v1/PreinstallAdInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "PreinstallAdHelper"

    const-string v1, "showDislikeWindows: "

    .line 144
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
