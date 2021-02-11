.class public interface abstract Lcom/miui/msa/global/guessyoulike/v1/IGlobalGuessYouLikeAd;
.super Ljava/lang/Object;
.source "IGlobalGuessYouLikeAd.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/msa/global/guessyoulike/v1/IGlobalGuessYouLikeAd$Stub;
    }
.end annotation


# virtual methods
.method public abstract getGameFolders(Ljava/util/Map;Z)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map;",
            "Z)",
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
.end method

.method public abstract getGlobalColudControl()Lcom/miui/msa/global/guessyoulike/v1/GlobalColudControlInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract handleClick(Ljava/util/List;IJ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;",
            ">;IJ)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract handleDislike(Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract handleView(Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract loadDesktopRecommendAdInfo(Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderInfo;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderInfo;",
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
.end method

.method public abstract loadImage(Ljava/lang/String;Lcom/miui/msa/global/guessyoulike/v1/IGlobalImageCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
