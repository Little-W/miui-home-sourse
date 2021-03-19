.class Lcom/miui/home/launcher/monitor/UIThreadMonitor$1;
.super Lcom/tencent/matrix/trace/core/LooperMonitor$LooperDispatchListener;
.source "UIThreadMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/monitor/UIThreadMonitor;->init()V
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

    .line 101
    iput-object p1, p0, Lcom/miui/home/launcher/monitor/UIThreadMonitor$1;->this$0:Lcom/miui/home/launcher/monitor/UIThreadMonitor;

    invoke-direct {p0}, Lcom/tencent/matrix/trace/core/LooperMonitor$LooperDispatchListener;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchEnd()V
    .locals 1

    .line 115
    invoke-super {p0}, Lcom/tencent/matrix/trace/core/LooperMonitor$LooperDispatchListener;->dispatchEnd()V

    .line 116
    iget-object v0, p0, Lcom/miui/home/launcher/monitor/UIThreadMonitor$1;->this$0:Lcom/miui/home/launcher/monitor/UIThreadMonitor;

    invoke-static {v0}, Lcom/miui/home/launcher/monitor/UIThreadMonitor;->access$200(Lcom/miui/home/launcher/monitor/UIThreadMonitor;)V

    return-void
.end method

.method public dispatchStart()V
    .locals 1

    .line 109
    invoke-super {p0}, Lcom/tencent/matrix/trace/core/LooperMonitor$LooperDispatchListener;->dispatchStart()V

    .line 110
    iget-object v0, p0, Lcom/miui/home/launcher/monitor/UIThreadMonitor$1;->this$0:Lcom/miui/home/launcher/monitor/UIThreadMonitor;

    invoke-static {v0}, Lcom/miui/home/launcher/monitor/UIThreadMonitor;->access$100(Lcom/miui/home/launcher/monitor/UIThreadMonitor;)V

    return-void
.end method

.method public isValid()Z
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/miui/home/launcher/monitor/UIThreadMonitor$1;->this$0:Lcom/miui/home/launcher/monitor/UIThreadMonitor;

    invoke-static {v0}, Lcom/miui/home/launcher/monitor/UIThreadMonitor;->access$000(Lcom/miui/home/launcher/monitor/UIThreadMonitor;)Z

    move-result v0

    return v0
.end method
