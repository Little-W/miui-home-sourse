.class Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper$7;
.super Lcom/miui/msa/internal/common/aidl/RemoteMethodInvoker;
.source "GlobalGuessYouLikeAdHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper;->getGameFolders(Ljava/util/Map;Z)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/msa/internal/common/aidl/RemoteMethodInvoker<",
        "Ljava/util/List<",
        "Ljava/lang/String;",
        ">;",
        "Lcom/miui/msa/global/guessyoulike/v1/IGlobalGuessYouLikeAd;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper;

.field final synthetic val$folderInfoMap:Ljava/util/Map;

.field final synthetic val$isNotFirst:Z


# direct methods
.method constructor <init>(Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper;Landroid/content/Context;Ljava/lang/Class;Ljava/util/Map;Z)V
    .locals 0

    .line 212
    iput-object p1, p0, Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper$7;->this$0:Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper;

    iput-object p4, p0, Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper$7;->val$folderInfoMap:Ljava/util/Map;

    iput-boolean p5, p0, Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper$7;->val$isNotFirst:Z

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

    .line 212
    check-cast p1, Lcom/miui/msa/global/guessyoulike/v1/IGlobalGuessYouLikeAd;

    invoke-virtual {p0, p1}, Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper$7;->innerInvoke(Lcom/miui/msa/global/guessyoulike/v1/IGlobalGuessYouLikeAd;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public innerInvoke(Lcom/miui/msa/global/guessyoulike/v1/IGlobalGuessYouLikeAd;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/msa/global/guessyoulike/v1/IGlobalGuessYouLikeAd;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 215
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 216
    iget-object v1, p0, Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper$7;->val$folderInfoMap:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 217
    iget-boolean v0, p0, Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper$7;->val$isNotFirst:Z

    invoke-interface {p1, v1, v0}, Lcom/miui/msa/global/guessyoulike/v1/IGlobalGuessYouLikeAd;->getGameFolders(Ljava/util/Map;Z)Ljava/util/List;

    move-result-object v0

    :cond_0
    return-object v0
.end method
