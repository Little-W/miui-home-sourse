.class Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper$4;
.super Lcom/miui/msa/internal/common/aidl/RemoteMethodInvoker;
.source "GlobalGuessYouLikeAdHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper;->handleClick(Ljava/util/List;IJ)V
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

.field final synthetic val$appIndex:I

.field final synthetic val$folderId:J

.field final synthetic val$infos:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper;Landroid/content/Context;Ljava/lang/Class;Ljava/util/List;IJ)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper$4;->this$0:Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper;

    iput-object p4, p0, Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper$4;->val$infos:Ljava/util/List;

    iput p5, p0, Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper$4;->val$appIndex:I

    iput-wide p6, p0, Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper$4;->val$folderId:J

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

    .line 149
    check-cast p1, Lcom/miui/msa/global/guessyoulike/v1/IGlobalGuessYouLikeAd;

    invoke-virtual {p0, p1}, Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper$4;->innerInvoke(Lcom/miui/msa/global/guessyoulike/v1/IGlobalGuessYouLikeAd;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public innerInvoke(Lcom/miui/msa/global/guessyoulike/v1/IGlobalGuessYouLikeAd;)Ljava/lang/Void;
    .locals 4

    .line 152
    :try_start_0
    iget-object v0, p0, Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper$4;->val$infos:Ljava/util/List;

    iget v1, p0, Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper$4;->val$appIndex:I

    iget-wide v2, p0, Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper$4;->val$folderId:J

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/miui/msa/global/guessyoulike/v1/IGlobalGuessYouLikeAd;->handleClick(Ljava/util/List;IJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "GlobalGuessYouLikeAdHelper"

    const-string v1, "handleViewError: "

    .line 154
    invoke-static {v0, v1, p1}, Lcom/miui/msa/internal/common/utils/MLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
