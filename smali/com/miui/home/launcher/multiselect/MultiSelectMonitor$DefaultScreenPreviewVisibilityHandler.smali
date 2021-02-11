.class Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$DefaultScreenPreviewVisibilityHandler;
.super Ljava/lang/Object;
.source "MultiSelectMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DefaultScreenPreviewVisibilityHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;


# direct methods
.method private constructor <init>(Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;)V
    .locals 0

    .line 297
    iput-object p1, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$DefaultScreenPreviewVisibilityHandler;->this$0:Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$1;)V
    .locals 0

    .line 297
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$DefaultScreenPreviewVisibilityHandler;-><init>(Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;)V

    return-void
.end method


# virtual methods
.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/DefaultScreenPreviewVisibilityMessage;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 300
    iget-object v0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$DefaultScreenPreviewVisibilityHandler;->this$0:Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;

    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/DefaultScreenPreviewVisibilityMessage;->isVisible()Z

    move-result p1

    invoke-static {v0, p1}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->access$1202(Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;Z)Z

    .line 301
    iget-object p1, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$DefaultScreenPreviewVisibilityHandler;->this$0:Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;

    invoke-static {p1}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->access$700(Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;)V

    return-void
.end method
