.class Lcom/miui/msa/preinstall/v1/PreinstallAdHelper$6;
.super Lcom/miui/msa/internal/common/aidl/RemoteMethodInvoker;
.source "PreinstallAdHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/msa/preinstall/v1/PreinstallAdHelper;->handleDislikeByTagId(Lcom/miui/msa/preinstall/v1/PreinstallAdInfo;Ljava/lang/String;)V
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

.field final synthetic val$tagId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/msa/preinstall/v1/PreinstallAdHelper;Landroid/content/Context;Ljava/lang/Class;Lcom/miui/msa/preinstall/v1/PreinstallAdInfo;Ljava/lang/String;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/miui/msa/preinstall/v1/PreinstallAdHelper$6;->this$0:Lcom/miui/msa/preinstall/v1/PreinstallAdHelper;

    iput-object p4, p0, Lcom/miui/msa/preinstall/v1/PreinstallAdHelper$6;->val$info:Lcom/miui/msa/preinstall/v1/PreinstallAdInfo;

    iput-object p5, p0, Lcom/miui/msa/preinstall/v1/PreinstallAdHelper$6;->val$tagId:Ljava/lang/String;

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

    .line 156
    check-cast p1, Lcom/miui/msa/preinstall/v1/IPreinstallAd;

    invoke-virtual {p0, p1}, Lcom/miui/msa/preinstall/v1/PreinstallAdHelper$6;->innerInvoke(Lcom/miui/msa/preinstall/v1/IPreinstallAd;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public innerInvoke(Lcom/miui/msa/preinstall/v1/IPreinstallAd;)Ljava/lang/Void;
    .locals 2

    .line 159
    :try_start_0
    iget-object v0, p0, Lcom/miui/msa/preinstall/v1/PreinstallAdHelper$6;->val$info:Lcom/miui/msa/preinstall/v1/PreinstallAdInfo;

    iget-object v1, p0, Lcom/miui/msa/preinstall/v1/PreinstallAdHelper$6;->val$tagId:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/miui/msa/preinstall/v1/IPreinstallAd;->handleDislikeByTagId(Lcom/miui/msa/preinstall/v1/PreinstallAdInfo;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "PreinstallAdHelper"

    const-string v1, "handleDislikeByTagId: "

    .line 161
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
