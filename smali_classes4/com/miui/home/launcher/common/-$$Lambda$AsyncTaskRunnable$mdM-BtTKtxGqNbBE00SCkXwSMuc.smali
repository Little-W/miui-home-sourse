.class public final synthetic Lcom/miui/home/launcher/common/-$$Lambda$AsyncTaskRunnable$mdM-BtTKtxGqNbBE00SCkXwSMuc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/common/AsyncTaskRunnable;

.field private final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/common/AsyncTaskRunnable;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/common/-$$Lambda$AsyncTaskRunnable$mdM-BtTKtxGqNbBE00SCkXwSMuc;->f$0:Lcom/miui/home/launcher/common/AsyncTaskRunnable;

    iput-object p2, p0, Lcom/miui/home/launcher/common/-$$Lambda$AsyncTaskRunnable$mdM-BtTKtxGqNbBE00SCkXwSMuc;->f$1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/common/-$$Lambda$AsyncTaskRunnable$mdM-BtTKtxGqNbBE00SCkXwSMuc;->f$0:Lcom/miui/home/launcher/common/AsyncTaskRunnable;

    iget-object p0, p0, Lcom/miui/home/launcher/common/-$$Lambda$AsyncTaskRunnable$mdM-BtTKtxGqNbBE00SCkXwSMuc;->f$1:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/common/AsyncTaskRunnable;->lambda$run$0$AsyncTaskRunnable(Ljava/lang/Object;)V

    return-void
.end method
