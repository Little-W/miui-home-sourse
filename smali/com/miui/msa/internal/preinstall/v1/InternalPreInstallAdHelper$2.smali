.class Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper$2;
.super Lcom/miui/msa/internal/common/aidl/RemoteMethodInvoker;
.source "InternalPreInstallAdHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper;->loadImage(Ljava/lang/String;Lcom/miui/msa/internal/preinstall/v1/ImageCallback;)V
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

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper;Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper$2;->this$0:Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper;

    iput-object p4, p0, Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper$2;->val$url:Ljava/lang/String;

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

    .line 98
    check-cast p1, Lcom/miui/msa/internal/preinstall/v1/IInternalPreInstallAd;

    invoke-virtual {p0, p1}, Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper$2;->innerInvoke(Lcom/miui/msa/internal/preinstall/v1/IInternalPreInstallAd;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public innerInvoke(Lcom/miui/msa/internal/preinstall/v1/IInternalPreInstallAd;)Ljava/lang/Void;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 102
    :try_start_0
    iget-object v0, p0, Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper$2;->val$url:Ljava/lang/String;

    new-instance v1, Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper$LoadImageCallback;

    iget-object v2, p0, Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper$2;->this$0:Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper;

    iget-object v3, p0, Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper$2;->val$url:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper$LoadImageCallback;-><init>(Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper;Ljava/lang/String;)V

    invoke-interface {p1, v0, v1}, Lcom/miui/msa/internal/preinstall/v1/IInternalPreInstallAd;->loadImage(Ljava/lang/String;Lcom/miui/msa/internal/preinstall/v1/IImageCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "InternalPreInstallAdHelper"

    const-string v1, "loadImage innerInvoke exception: "

    .line 104
    invoke-static {v0, v1, p1}, Lcom/miui/msa/internal/common/utils/MLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
