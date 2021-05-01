.class public final synthetic Lcom/miui/home/launcher/monitor/-$$Lambda$FpsReporter$yKLJIBT7RK9wKDoU0olENI6iZO0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/monitor/FpsReporter;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/monitor/FpsReporter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/monitor/-$$Lambda$FpsReporter$yKLJIBT7RK9wKDoU0olENI6iZO0;->f$0:Lcom/miui/home/launcher/monitor/FpsReporter;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/monitor/-$$Lambda$FpsReporter$yKLJIBT7RK9wKDoU0olENI6iZO0;->f$0:Lcom/miui/home/launcher/monitor/FpsReporter;

    invoke-static {v0}, Lcom/miui/home/launcher/monitor/FpsReporter;->lambda$new$576(Lcom/miui/home/launcher/monitor/FpsReporter;)V

    return-void
.end method
