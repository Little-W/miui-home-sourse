.class public final synthetic Lcom/xiaomi/dist/utils/-$$Lambda$TgKh_FPh_xBKXjLjrPpAlxqbm-k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/xiaomi/dist/utils/ExecutorHelper$Task;


# instance fields
.field private final synthetic f$0:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/dist/utils/-$$Lambda$TgKh_FPh_xBKXjLjrPpAlxqbm-k;->f$0:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/dist/utils/-$$Lambda$TgKh_FPh_xBKXjLjrPpAlxqbm-k;->f$0:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
