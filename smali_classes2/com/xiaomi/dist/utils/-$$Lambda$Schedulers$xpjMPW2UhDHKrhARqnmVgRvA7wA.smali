.class public final synthetic Lcom/xiaomi/dist/utils/-$$Lambda$Schedulers$xpjMPW2UhDHKrhARqnmVgRvA7wA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# static fields
.field public static final synthetic INSTANCE:Lcom/xiaomi/dist/utils/-$$Lambda$Schedulers$xpjMPW2UhDHKrhARqnmVgRvA7wA;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaomi/dist/utils/-$$Lambda$Schedulers$xpjMPW2UhDHKrhARqnmVgRvA7wA;

    invoke-direct {v0}, Lcom/xiaomi/dist/utils/-$$Lambda$Schedulers$xpjMPW2UhDHKrhARqnmVgRvA7wA;-><init>()V

    sput-object v0, Lcom/xiaomi/dist/utils/-$$Lambda$Schedulers$xpjMPW2UhDHKrhARqnmVgRvA7wA;->INSTANCE:Lcom/xiaomi/dist/utils/-$$Lambda$Schedulers$xpjMPW2UhDHKrhARqnmVgRvA7wA;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    invoke-static {}, Lcom/xiaomi/dist/utils/Schedulers;->lambda$static$0()Ljava/util/concurrent/Executor;

    move-result-object p0

    return-object p0
.end method
