.class public final synthetic Lcom/miui/home/library/utils/-$$Lambda$AsyncTaskExecutorHelper$iDxI8Ylh_5z4gr141LB7wkJ7RkU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# static fields
.field public static final synthetic INSTANCE:Lcom/miui/home/library/utils/-$$Lambda$AsyncTaskExecutorHelper$iDxI8Ylh_5z4gr141LB7wkJ7RkU;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/home/library/utils/-$$Lambda$AsyncTaskExecutorHelper$iDxI8Ylh_5z4gr141LB7wkJ7RkU;

    invoke-direct {v0}, Lcom/miui/home/library/utils/-$$Lambda$AsyncTaskExecutorHelper$iDxI8Ylh_5z4gr141LB7wkJ7RkU;-><init>()V

    sput-object v0, Lcom/miui/home/library/utils/-$$Lambda$AsyncTaskExecutorHelper$iDxI8Ylh_5z4gr141LB7wkJ7RkU;->INSTANCE:Lcom/miui/home/library/utils/-$$Lambda$AsyncTaskExecutorHelper$iDxI8Ylh_5z4gr141LB7wkJ7RkU;

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

    invoke-static {p1}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->lambda$static$0(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p1

    return-object p1
.end method
