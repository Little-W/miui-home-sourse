.class public final synthetic Lcom/miui/home/library/utils/-$$Lambda$AsyncTaskExecutorHelper$MlUfw9oKP6JygM1E2WgDV-HaLQA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava8/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/library/utils/-$$Lambda$AsyncTaskExecutorHelper$MlUfw9oKP6JygM1E2WgDV-HaLQA;->f$0:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/library/utils/-$$Lambda$AsyncTaskExecutorHelper$MlUfw9oKP6JygM1E2WgDV-HaLQA;->f$0:Ljava/lang/Runnable;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, p1}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->lambda$waitForUnlockAndRun$1(Ljava/lang/Runnable;Ljava/lang/Boolean;)V

    return-void
.end method
