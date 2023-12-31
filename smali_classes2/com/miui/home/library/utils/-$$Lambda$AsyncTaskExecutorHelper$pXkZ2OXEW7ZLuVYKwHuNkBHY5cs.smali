.class public final synthetic Lcom/miui/home/library/utils/-$$Lambda$AsyncTaskExecutorHelper$pXkZ2OXEW7ZLuVYKwHuNkBHY5cs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field private final synthetic f$0:Landroid/os/UserHandle;

.field private final synthetic f$1:Landroid/content/Context;

.field private final synthetic f$2:Ljava/util/function/Consumer;

.field private final synthetic f$3:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Landroid/os/UserHandle;Landroid/content/Context;Ljava/util/function/Consumer;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/library/utils/-$$Lambda$AsyncTaskExecutorHelper$pXkZ2OXEW7ZLuVYKwHuNkBHY5cs;->f$0:Landroid/os/UserHandle;

    iput-object p2, p0, Lcom/miui/home/library/utils/-$$Lambda$AsyncTaskExecutorHelper$pXkZ2OXEW7ZLuVYKwHuNkBHY5cs;->f$1:Landroid/content/Context;

    iput-object p3, p0, Lcom/miui/home/library/utils/-$$Lambda$AsyncTaskExecutorHelper$pXkZ2OXEW7ZLuVYKwHuNkBHY5cs;->f$2:Ljava/util/function/Consumer;

    iput-object p4, p0, Lcom/miui/home/library/utils/-$$Lambda$AsyncTaskExecutorHelper$pXkZ2OXEW7ZLuVYKwHuNkBHY5cs;->f$3:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/miui/home/library/utils/-$$Lambda$AsyncTaskExecutorHelper$pXkZ2OXEW7ZLuVYKwHuNkBHY5cs;->f$0:Landroid/os/UserHandle;

    iget-object v1, p0, Lcom/miui/home/library/utils/-$$Lambda$AsyncTaskExecutorHelper$pXkZ2OXEW7ZLuVYKwHuNkBHY5cs;->f$1:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/home/library/utils/-$$Lambda$AsyncTaskExecutorHelper$pXkZ2OXEW7ZLuVYKwHuNkBHY5cs;->f$2:Ljava/util/function/Consumer;

    iget-object p0, p0, Lcom/miui/home/library/utils/-$$Lambda$AsyncTaskExecutorHelper$pXkZ2OXEW7ZLuVYKwHuNkBHY5cs;->f$3:Ljava/lang/Runnable;

    check-cast p1, Ljava/lang/Void;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->lambda$waitForUnlockAndRun$3(Landroid/os/UserHandle;Landroid/content/Context;Ljava/util/function/Consumer;Ljava/lang/Runnable;Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
