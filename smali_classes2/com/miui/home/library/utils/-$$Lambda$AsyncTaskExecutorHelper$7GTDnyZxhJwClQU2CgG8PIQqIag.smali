.class public final synthetic Lcom/miui/home/library/utils/-$$Lambda$AsyncTaskExecutorHelper$7GTDnyZxhJwClQU2CgG8PIQqIag;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field private final synthetic f$0:Ljava/util/function/Supplier;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Supplier;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/library/utils/-$$Lambda$AsyncTaskExecutorHelper$7GTDnyZxhJwClQU2CgG8PIQqIag;->f$0:Ljava/util/function/Supplier;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/miui/home/library/utils/-$$Lambda$AsyncTaskExecutorHelper$7GTDnyZxhJwClQU2CgG8PIQqIag;->f$0:Ljava/util/function/Supplier;

    check-cast p1, Ljava/lang/Void;

    invoke-static {p0, p1}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->lambda$execParallel$0(Ljava/util/function/Supplier;Ljava/lang/Void;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
