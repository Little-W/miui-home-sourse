.class public final synthetic Lcom/xiaomi/dist/utils/-$$Lambda$IxGBakSdaMrA22tdmvBvIHqaV-s;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/xiaomi/dist/utils/ExecutorHelper$Task;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaomi/dist/utils/ExecutorHelper$Task;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/dist/utils/-$$Lambda$IxGBakSdaMrA22tdmvBvIHqaV-s;->f$0:Lcom/xiaomi/dist/utils/ExecutorHelper$Task;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/dist/utils/-$$Lambda$IxGBakSdaMrA22tdmvBvIHqaV-s;->f$0:Lcom/xiaomi/dist/utils/ExecutorHelper$Task;

    invoke-interface {p0}, Lcom/xiaomi/dist/utils/ExecutorHelper$Task;->run()V

    return-void
.end method
