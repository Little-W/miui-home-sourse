.class public final synthetic Lcom/xiaomi/dist/handoff/system/-$$Lambda$HandoffController$pkgPZS_YJdZ51DnQ7QK-GSOr28Q;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/dist/utils/ExecutorHelper$ExceptionHandler;


# static fields
.field public static final synthetic INSTANCE:Lcom/xiaomi/dist/handoff/system/-$$Lambda$HandoffController$pkgPZS_YJdZ51DnQ7QK-GSOr28Q;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaomi/dist/handoff/system/-$$Lambda$HandoffController$pkgPZS_YJdZ51DnQ7QK-GSOr28Q;

    invoke-direct {v0}, Lcom/xiaomi/dist/handoff/system/-$$Lambda$HandoffController$pkgPZS_YJdZ51DnQ7QK-GSOr28Q;-><init>()V

    sput-object v0, Lcom/xiaomi/dist/handoff/system/-$$Lambda$HandoffController$pkgPZS_YJdZ51DnQ7QK-GSOr28Q;->INSTANCE:Lcom/xiaomi/dist/handoff/system/-$$Lambda$HandoffController$pkgPZS_YJdZ51DnQ7QK-GSOr28Q;

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

    invoke-static {p1}, Lcom/xiaomi/dist/handoff/system/HandoffController;->lambda$restoreState$22(Ljava/lang/Throwable;)V

    return-void
.end method
