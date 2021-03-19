.class Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$CurrentScreenIdHandler;
.super Ljava/lang/Object;
.source "MultiSelectMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CurrentScreenIdHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;


# direct methods
.method private constructor <init>(Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;)V
    .locals 0

    .line 304
    iput-object p1, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$CurrentScreenIdHandler;->this$0:Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$1;)V
    .locals 0

    .line 304
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$CurrentScreenIdHandler;-><init>(Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;)V

    return-void
.end method


# virtual methods
.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/CurrentScreenIdMessage;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 307
    iget-object p1, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$CurrentScreenIdHandler;->this$0:Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;

    invoke-static {p1}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->access$1300(Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;)V

    return-void
.end method
