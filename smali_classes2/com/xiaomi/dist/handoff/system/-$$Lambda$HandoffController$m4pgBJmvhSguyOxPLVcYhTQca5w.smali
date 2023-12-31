.class public final synthetic Lcom/xiaomi/dist/handoff/system/-$$Lambda$HandoffController$m4pgBJmvhSguyOxPLVcYhTQca5w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/xiaomi/dist/utils/ExecutorHelper$ExceptionHandler;


# static fields
.field public static final synthetic INSTANCE:Lcom/xiaomi/dist/handoff/system/-$$Lambda$HandoffController$m4pgBJmvhSguyOxPLVcYhTQca5w;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaomi/dist/handoff/system/-$$Lambda$HandoffController$m4pgBJmvhSguyOxPLVcYhTQca5w;

    invoke-direct {v0}, Lcom/xiaomi/dist/handoff/system/-$$Lambda$HandoffController$m4pgBJmvhSguyOxPLVcYhTQca5w;-><init>()V

    sput-object v0, Lcom/xiaomi/dist/handoff/system/-$$Lambda$HandoffController$m4pgBJmvhSguyOxPLVcYhTQca5w;->INSTANCE:Lcom/xiaomi/dist/handoff/system/-$$Lambda$HandoffController$m4pgBJmvhSguyOxPLVcYhTQca5w;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleException(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p1}, Lcom/xiaomi/dist/handoff/system/HandoffController;->lambda$registerLocalHandoffSessionListener$4(Ljava/lang/Throwable;)V

    return-void
.end method
