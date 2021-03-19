.class Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper$6;
.super Lcom/miui/msa/internal/common/aidl/RemoteMethodInvoker;
.source "GlobalGuessYouLikeAdHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper;->getGlobalColudControl()Lcom/miui/msa/global/guessyoulike/v1/GlobalColudControlInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/msa/internal/common/aidl/RemoteMethodInvoker<",
        "Lcom/miui/msa/global/guessyoulike/v1/GlobalColudControlInfo;",
        "Lcom/miui/msa/global/guessyoulike/v1/IGlobalGuessYouLikeAd;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper;


# direct methods
.method constructor <init>(Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper;Landroid/content/Context;Ljava/lang/Class;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper$6;->this$0:Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper;

    invoke-direct {p0, p2, p3}, Lcom/miui/msa/internal/common/aidl/RemoteMethodInvoker;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public innerInvoke(Lcom/miui/msa/global/guessyoulike/v1/IGlobalGuessYouLikeAd;)Lcom/miui/msa/global/guessyoulike/v1/GlobalColudControlInfo;
    .locals 2

    .line 190
    :try_start_0
    invoke-interface {p1}, Lcom/miui/msa/global/guessyoulike/v1/IGlobalGuessYouLikeAd;->getGlobalColudControl()Lcom/miui/msa/global/guessyoulike/v1/GlobalColudControlInfo;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string v0, "GlobalGuessYouLikeAdHelper"

    const-string v1, "handleViewError: "

    .line 192
    invoke-static {v0, v1, p1}, Lcom/miui/msa/internal/common/utils/MLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic innerInvoke(Landroid/os/IInterface;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 187
    check-cast p1, Lcom/miui/msa/global/guessyoulike/v1/IGlobalGuessYouLikeAd;

    invoke-virtual {p0, p1}, Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper$6;->innerInvoke(Lcom/miui/msa/global/guessyoulike/v1/IGlobalGuessYouLikeAd;)Lcom/miui/msa/global/guessyoulike/v1/GlobalColudControlInfo;

    move-result-object p1

    return-object p1
.end method
