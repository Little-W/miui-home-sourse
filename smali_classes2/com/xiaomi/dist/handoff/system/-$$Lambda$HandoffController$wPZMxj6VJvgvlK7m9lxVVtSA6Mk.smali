.class public final synthetic Lcom/xiaomi/dist/handoff/system/-$$Lambda$HandoffController$wPZMxj6VJvgvlK7m9lxVVtSA6Mk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/xiaomi/dist/utils/ServiceExecutor$AsInterface;


# static fields
.field public static final synthetic INSTANCE:Lcom/xiaomi/dist/handoff/system/-$$Lambda$HandoffController$wPZMxj6VJvgvlK7m9lxVVtSA6Mk;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaomi/dist/handoff/system/-$$Lambda$HandoffController$wPZMxj6VJvgvlK7m9lxVVtSA6Mk;

    invoke-direct {v0}, Lcom/xiaomi/dist/handoff/system/-$$Lambda$HandoffController$wPZMxj6VJvgvlK7m9lxVVtSA6Mk;-><init>()V

    sput-object v0, Lcom/xiaomi/dist/handoff/system/-$$Lambda$HandoffController$wPZMxj6VJvgvlK7m9lxVVtSA6Mk;->INSTANCE:Lcom/xiaomi/dist/handoff/system/-$$Lambda$HandoffController$wPZMxj6VJvgvlK7m9lxVVtSA6Mk;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final asInterface(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Lcom/xiaomi/dist/handoff/system/HandoffController;->lambda$wPZMxj6VJvgvlK7m9lxVVtSA6Mk(Landroid/os/IBinder;)Lcom/xiaomi/dist/handoff/IHandoffControlService;

    move-result-object p0

    return-object p0
.end method
