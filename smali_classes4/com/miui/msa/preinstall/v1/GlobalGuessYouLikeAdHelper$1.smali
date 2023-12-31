.class Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper$1;
.super Lcom/miui/msa/internal/common/aidl/RemoteMethodInvoker;
.source "GlobalGuessYouLikeAdHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper;->loadGlobalFolderRecommendAdInfo(Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderInfo;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/msa/internal/common/aidl/RemoteMethodInvoker<",
        "Ljava/util/List<",
        "Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;",
        ">;",
        "Lcom/miui/msa/global/guessyoulike/v1/IGlobalGuessYouLikeAd;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper;

.field final synthetic val$folderInfo:Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderInfo;


# direct methods
.method constructor <init>(Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper;Landroid/content/Context;Ljava/lang/Class;Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderInfo;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper$1;->this$0:Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper;

    iput-object p4, p0, Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper$1;->val$folderInfo:Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderInfo;

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

    .line 71
    check-cast p1, Lcom/miui/msa/global/guessyoulike/v1/IGlobalGuessYouLikeAd;

    invoke-virtual {p0, p1}, Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper$1;->innerInvoke(Lcom/miui/msa/global/guessyoulike/v1/IGlobalGuessYouLikeAd;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public innerInvoke(Lcom/miui/msa/global/guessyoulike/v1/IGlobalGuessYouLikeAd;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/msa/global/guessyoulike/v1/IGlobalGuessYouLikeAd;",
            ")",
            "Ljava/util/List<",
            "Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 74
    iget-object p0, p0, Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper$1;->val$folderInfo:Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderInfo;

    invoke-interface {p1, p0}, Lcom/miui/msa/global/guessyoulike/v1/IGlobalGuessYouLikeAd;->loadDesktopRecommendAdInfo(Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderInfo;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
