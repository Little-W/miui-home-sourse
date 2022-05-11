.class public final synthetic Lcom/miui/maml/util/-$$Lambda$ExecutorHelper$Ai2AmxYwjtdsda6hu1tHECIa8Jg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# static fields
.field public static final synthetic INSTANCE:Lcom/miui/maml/util/-$$Lambda$ExecutorHelper$Ai2AmxYwjtdsda6hu1tHECIa8Jg;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/maml/util/-$$Lambda$ExecutorHelper$Ai2AmxYwjtdsda6hu1tHECIa8Jg;

    invoke-direct {v0}, Lcom/miui/maml/util/-$$Lambda$ExecutorHelper$Ai2AmxYwjtdsda6hu1tHECIa8Jg;-><init>()V

    sput-object v0, Lcom/miui/maml/util/-$$Lambda$ExecutorHelper$Ai2AmxYwjtdsda6hu1tHECIa8Jg;->INSTANCE:Lcom/miui/maml/util/-$$Lambda$ExecutorHelper$Ai2AmxYwjtdsda6hu1tHECIa8Jg;

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

    invoke-static {p1}, Lcom/miui/maml/util/ExecutorHelper;->lambda$getLocalTaskExecutor$0(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p1

    return-object p1
.end method
