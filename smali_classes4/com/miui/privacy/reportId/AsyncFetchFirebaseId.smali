.class public abstract Lcom/miui/privacy/reportId/AsyncFetchFirebaseId;
.super Ljava/lang/Object;
.source "AsyncFetchFirebaseId.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/privacy/reportId/AsyncFetchFirebaseId$AsyncFetchFirebaseIdCallback;,
        Lcom/miui/privacy/reportId/AsyncFetchFirebaseId$Factory;
    }
.end annotation


# instance fields
.field private firebaseIdFetchCallback:Lcom/miui/privacy/reportId/AsyncFetchFirebaseId$AsyncFetchFirebaseIdCallback;


# direct methods
.method public constructor <init>(Lcom/miui/privacy/reportId/AsyncFetchFirebaseId$AsyncFetchFirebaseIdCallback;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/miui/privacy/reportId/AsyncFetchFirebaseId;->firebaseIdFetchCallback:Lcom/miui/privacy/reportId/AsyncFetchFirebaseId$AsyncFetchFirebaseIdCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/privacy/reportId/AsyncFetchFirebaseId;)Lcom/miui/privacy/reportId/AsyncFetchFirebaseId$AsyncFetchFirebaseIdCallback;
    .locals 0

    .line 8
    iget-object p0, p0, Lcom/miui/privacy/reportId/AsyncFetchFirebaseId;->firebaseIdFetchCallback:Lcom/miui/privacy/reportId/AsyncFetchFirebaseId$AsyncFetchFirebaseIdCallback;

    return-object p0
.end method


# virtual methods
.method public get()V
    .locals 2

    .line 31
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/miui/privacy/reportId/-$$Lambda$AsyncFetchFirebaseId$3TbjeQI8isG4K_TkBm55VNtQF0g;

    invoke-direct {v1, p0}, Lcom/miui/privacy/reportId/-$$Lambda$AsyncFetchFirebaseId$3TbjeQI8isG4K_TkBm55VNtQF0g;-><init>(Lcom/miui/privacy/reportId/AsyncFetchFirebaseId;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected abstract getFromRemote(Lcom/miui/privacy/reportId/AsyncFetchFirebaseId$AsyncFetchFirebaseIdCallback;)V
.end method

.method public synthetic lambda$get$0$AsyncFetchFirebaseId()V
    .locals 1

    .line 32
    new-instance v0, Lcom/miui/privacy/reportId/AsyncFetchFirebaseId$1;

    invoke-direct {v0, p0}, Lcom/miui/privacy/reportId/AsyncFetchFirebaseId$1;-><init>(Lcom/miui/privacy/reportId/AsyncFetchFirebaseId;)V

    invoke-virtual {p0, v0}, Lcom/miui/privacy/reportId/AsyncFetchFirebaseId;->getFromRemote(Lcom/miui/privacy/reportId/AsyncFetchFirebaseId$AsyncFetchFirebaseIdCallback;)V

    return-void
.end method
