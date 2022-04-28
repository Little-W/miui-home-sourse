.class Lcom/miui/privacy/reportId/AsyncFetchFirebaseId$1;
.super Ljava/lang/Object;
.source "AsyncFetchFirebaseId.java"

# interfaces
.implements Lcom/miui/privacy/reportId/AsyncFetchFirebaseId$AsyncFetchFirebaseIdCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/privacy/reportId/AsyncFetchFirebaseId;->lambda$get$0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/privacy/reportId/AsyncFetchFirebaseId;


# direct methods
.method constructor <init>(Lcom/miui/privacy/reportId/AsyncFetchFirebaseId;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/miui/privacy/reportId/AsyncFetchFirebaseId$1;->this$0:Lcom/miui/privacy/reportId/AsyncFetchFirebaseId;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/miui/privacy/reportId/AsyncFetchFirebaseId$1;->this$0:Lcom/miui/privacy/reportId/AsyncFetchFirebaseId;

    invoke-static {v0}, Lcom/miui/privacy/reportId/AsyncFetchFirebaseId;->access$000(Lcom/miui/privacy/reportId/AsyncFetchFirebaseId;)Lcom/miui/privacy/reportId/AsyncFetchFirebaseId$AsyncFetchFirebaseIdCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/miui/privacy/reportId/AsyncFetchFirebaseId$1;->this$0:Lcom/miui/privacy/reportId/AsyncFetchFirebaseId;

    invoke-static {v0}, Lcom/miui/privacy/reportId/AsyncFetchFirebaseId;->access$000(Lcom/miui/privacy/reportId/AsyncFetchFirebaseId;)Lcom/miui/privacy/reportId/AsyncFetchFirebaseId$AsyncFetchFirebaseIdCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/miui/privacy/reportId/AsyncFetchFirebaseId$AsyncFetchFirebaseIdCallback;->onFailed(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onSucceed(Ljava/lang/String;)V
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/miui/privacy/reportId/AsyncFetchFirebaseId$1;->this$0:Lcom/miui/privacy/reportId/AsyncFetchFirebaseId;

    invoke-static {v0}, Lcom/miui/privacy/reportId/AsyncFetchFirebaseId;->access$000(Lcom/miui/privacy/reportId/AsyncFetchFirebaseId;)Lcom/miui/privacy/reportId/AsyncFetchFirebaseId$AsyncFetchFirebaseIdCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/miui/privacy/reportId/AsyncFetchFirebaseId$1;->this$0:Lcom/miui/privacy/reportId/AsyncFetchFirebaseId;

    invoke-static {v0}, Lcom/miui/privacy/reportId/AsyncFetchFirebaseId;->access$000(Lcom/miui/privacy/reportId/AsyncFetchFirebaseId;)Lcom/miui/privacy/reportId/AsyncFetchFirebaseId$AsyncFetchFirebaseIdCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/miui/privacy/reportId/AsyncFetchFirebaseId$AsyncFetchFirebaseIdCallback;->onSucceed(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
