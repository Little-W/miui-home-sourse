.class Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$CellLayoutMessageHandler;
.super Ljava/lang/Object;
.source "MultiSelectMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CellLayoutMessageHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;


# direct methods
.method private constructor <init>(Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;)V
    .locals 0

    .line 372
    iput-object p1, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$CellLayoutMessageHandler;->this$0:Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$1;)V
    .locals 0

    .line 372
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$CellLayoutMessageHandler;-><init>(Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;)V

    return-void
.end method


# virtual methods
.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/CellLayoutMessage;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 375
    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/CellLayoutMessage;->getMessage()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 376
    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/CellLayoutMessage;->getMessage()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 377
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$CellLayoutMessageHandler;->this$0:Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;

    invoke-static {p1}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->access$1300(Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;)V

    :cond_1
    return-void
.end method
