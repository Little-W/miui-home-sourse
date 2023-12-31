.class public Lcom/market/sdk/DesktopFolderConfigCallbackAdapter;
.super Landroid/os/ResultReceiver;
.source "DesktopFolderConfigCallbackAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market/sdk/DesktopFolderConfigCallbackAdapter$Proxy;
    }
.end annotation


# static fields
.field private static final KEY_DATA:Ljava/lang/String; = "key_data"

.field private static final RESULT_CODE_FAILED:I = 0x2

.field private static final RESULT_CODE_SUCCESS:I = 0x1


# instance fields
.field private final mAdaptee:Lcom/market/sdk/IDesktopFolderConfigCallback;


# direct methods
.method public constructor <init>(Lcom/market/sdk/IDesktopFolderConfigCallback;)V
    .locals 1

    const/4 v0, 0x0

    .line 19
    invoke-direct {p0, v0}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    .line 20
    iput-object p1, p0, Lcom/market/sdk/DesktopFolderConfigCallbackAdapter;->mAdaptee:Lcom/market/sdk/IDesktopFolderConfigCallback;

    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 2

    const/4 v0, 0x1

    const-string v1, "key_data"

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 33
    iget-object p0, p0, Lcom/market/sdk/DesktopFolderConfigCallbackAdapter;->mAdaptee:Lcom/market/sdk/IDesktopFolderConfigCallback;

    invoke-interface {p0, p1}, Lcom/market/sdk/IDesktopFolderConfigCallback;->onFailed(Ljava/lang/String;)V

    goto :goto_0

    .line 27
    :cond_1
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 28
    iget-object p0, p0, Lcom/market/sdk/DesktopFolderConfigCallbackAdapter;->mAdaptee:Lcom/market/sdk/IDesktopFolderConfigCallback;

    invoke-interface {p0, p1}, Lcom/market/sdk/IDesktopFolderConfigCallback;->onSuccess(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
