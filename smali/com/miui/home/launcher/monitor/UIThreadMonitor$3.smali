.class Lcom/miui/home/launcher/monitor/UIThreadMonitor$3;
.super Ljava/lang/Object;
.source "UIThreadMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/monitor/UIThreadMonitor;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/monitor/UIThreadMonitor;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/monitor/UIThreadMonitor;)V
    .locals 0

    .line 322
    iput-object p1, p0, Lcom/miui/home/launcher/monitor/UIThreadMonitor$3;->this$0:Lcom/miui/home/launcher/monitor/UIThreadMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 326
    iget-object v0, p0, Lcom/miui/home/launcher/monitor/UIThreadMonitor$3;->this$0:Lcom/miui/home/launcher/monitor/UIThreadMonitor;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/home/launcher/monitor/UIThreadMonitor;->access$300(Lcom/miui/home/launcher/monitor/UIThreadMonitor;I)V

    .line 327
    iget-object v0, p0, Lcom/miui/home/launcher/monitor/UIThreadMonitor$3;->this$0:Lcom/miui/home/launcher/monitor/UIThreadMonitor;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/monitor/UIThreadMonitor;->access$400(Lcom/miui/home/launcher/monitor/UIThreadMonitor;I)V

    return-void
.end method
