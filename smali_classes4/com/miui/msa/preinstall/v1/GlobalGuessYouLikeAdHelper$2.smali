.class Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper$2;
.super Lcom/miui/msa/internal/common/aidl/RemoteMethodInvoker;
.source "GlobalGuessYouLikeAdHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper;->loadImage(Ljava/lang/String;Lcom/miui/msa/global/guessyoulike/v1/GlobalImageCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/msa/internal/common/aidl/RemoteMethodInvoker<",
        "Ljava/lang/Void;",
        "Lcom/miui/msa/global/guessyoulike/v1/IGlobalGuessYouLikeAd;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper;Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper$2;->this$0:Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper;

    iput-object p4, p0, Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper$2;->val$url:Ljava/lang/String;

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

    .line 105
    check-cast p1, Lcom/miui/msa/global/guessyoulike/v1/IGlobalGuessYouLikeAd;

    invoke-virtual {p0, p1}, Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper$2;->innerInvoke(Lcom/miui/msa/global/guessyoulike/v1/IGlobalGuessYouLikeAd;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public innerInvoke(Lcom/miui/msa/global/guessyoulike/v1/IGlobalGuessYouLikeAd;)Ljava/lang/Void;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 109
    :try_start_0
    iget-object v0, p0, Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper$2;->val$url:Ljava/lang/String;

    new-instance v1, Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper$LoadImageCallback;

    iget-object v2, p0, Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper$2;->this$0:Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper;

    iget-object p0, p0, Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper$2;->val$url:Ljava/lang/String;

    invoke-direct {v1, v2, p0}, Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper$LoadImageCallback;-><init>(Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper;Ljava/lang/String;)V

    invoke-interface {p1, v0, v1}, Lcom/miui/msa/global/guessyoulike/v1/IGlobalGuessYouLikeAd;->loadImage(Ljava/lang/String;Lcom/miui/msa/global/guessyoulike/v1/IGlobalImageCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "GlobalGuessYouLikeAdHelper"

    const-string v0, "loadImage innerInvoke exception: "

    .line 111
    invoke-static {p1, v0, p0}, Lcom/miui/msa/internal/common/utils/MLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method
