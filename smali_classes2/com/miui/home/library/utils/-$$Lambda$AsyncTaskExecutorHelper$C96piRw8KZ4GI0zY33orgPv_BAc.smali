.class public final synthetic Lcom/miui/home/library/utils/-$$Lambda$AsyncTaskExecutorHelper$C96piRw8KZ4GI0zY33orgPv_BAc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# static fields
.field public static final synthetic INSTANCE:Lcom/miui/home/library/utils/-$$Lambda$AsyncTaskExecutorHelper$C96piRw8KZ4GI0zY33orgPv_BAc;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/home/library/utils/-$$Lambda$AsyncTaskExecutorHelper$C96piRw8KZ4GI0zY33orgPv_BAc;

    invoke-direct {v0}, Lcom/miui/home/library/utils/-$$Lambda$AsyncTaskExecutorHelper$C96piRw8KZ4GI0zY33orgPv_BAc;-><init>()V

    sput-object v0, Lcom/miui/home/library/utils/-$$Lambda$AsyncTaskExecutorHelper$C96piRw8KZ4GI0zY33orgPv_BAc;->INSTANCE:Lcom/miui/home/library/utils/-$$Lambda$AsyncTaskExecutorHelper$C96piRw8KZ4GI0zY33orgPv_BAc;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 0

    invoke-static {p1}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->lambda$static$2(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p0

    return-object p0
.end method
