.class Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper$5;
.super Lcom/miui/msa/internal/common/aidl/RemoteMethodInvoker;
.source "GlobalGuessYouLikeAdHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper;->handleDislike(Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;I)V
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

.field final synthetic val$info:Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper;Landroid/content/Context;Ljava/lang/Class;Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;I)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper$5;->this$0:Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper;

    iput-object p4, p0, Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper$5;->val$info:Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;

    iput p5, p0, Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper$5;->val$position:I

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

    .line 168
    check-cast p1, Lcom/miui/msa/global/guessyoulike/v1/IGlobalGuessYouLikeAd;

    invoke-virtual {p0, p1}, Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper$5;->innerInvoke(Lcom/miui/msa/global/guessyoulike/v1/IGlobalGuessYouLikeAd;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public innerInvoke(Lcom/miui/msa/global/guessyoulike/v1/IGlobalGuessYouLikeAd;)Ljava/lang/Void;
    .locals 1

    .line 171
    :try_start_0
    iget-object v0, p0, Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper$5;->val$info:Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;

    iget p0, p0, Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper$5;->val$position:I

    invoke-interface {p1, v0, p0}, Lcom/miui/msa/global/guessyoulike/v1/IGlobalGuessYouLikeAd;->handleDislike(Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "GlobalGuessYouLikeAdHelper"

    const-string v0, "handleViewError: "

    .line 173
    invoke-static {p1, v0, p0}, Lcom/miui/msa/internal/common/utils/MLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method
