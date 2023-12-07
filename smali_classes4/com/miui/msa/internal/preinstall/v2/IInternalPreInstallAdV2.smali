.class public interface abstract Lcom/miui/msa/internal/preinstall/v2/IInternalPreInstallAdV2;
.super Ljava/lang/Object;
.source "IInternalPreInstallAdV2.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/msa/internal/preinstall/v2/IInternalPreInstallAdV2$Stub;
    }
.end annotation


# virtual methods
.method public abstract getCNColudControl()Lcom/miui/msa/internal/preinstall/v2/CNColudControlInfo;
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
            "Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;",
            ">;IJ)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract handleDislike(Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract handleView(Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract loadDesktopRecommendAdInfo(Lcom/miui/msa/internal/preinstall/v2/FolderInfo;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/msa/internal/preinstall/v2/FolderInfo;",
            ")",
            "Ljava/util/List<",
            "Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract loadImage(Ljava/lang/String;Lcom/miui/msa/internal/preinstall/v2/IImageCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
